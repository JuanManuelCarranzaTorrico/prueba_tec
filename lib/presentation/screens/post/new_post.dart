import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPost extends StatelessWidget {
  const NewPost({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return  Scaffold(
      appBar: AppBar(
        title: const Text('New Post'),
        backgroundColor: colors.primary,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: _postForm(),
    );
  }
}
//statefull widget with a form to create a new post
class _postForm extends StatefulWidget {
  const _postForm({super.key});

  @override
  State<_postForm> createState() => _postFormState();
}

class _postFormState extends State<_postForm> {
  @override
  Widget build(BuildContext context) {
    final tittleController = TextEditingController();
    final bodyController = TextEditingController();
    final userIdController = TextEditingController();
    String title = '';
    String body = '';
    String userId = '';
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.text,
            controller: tittleController,
            decoration: const InputDecoration(
              hintText: 'Title',
            ),
            onChanged: (value) {
                title = value;
              },
          ),
          TextFormField(
            controller: bodyController,
            decoration: const InputDecoration(
              hintText: 'Description',
            ),
            onChanged: (value) {
                body = value;
              },
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            controller: userIdController,
            decoration: const InputDecoration(
              hintText: 'UserId',
            ),
            onChanged: (value) {
                userId = value;
              },
          ),
          //button on the bottom of the screen
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if(title.isNotEmpty && body.isNotEmpty && userId.isNotEmpty ){
                  title = '';
                  body = '';
                  userId = '';
                  tittleController.clear();
                  bodyController.clear();
                  userIdController.clear();
                }else{
                  openDialog(context);
                }
              }, 
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 1, 95, 172),
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                )
              ),
              child: const Text('GUARDAR'),
              
            ),
          ),
        ],
      ),
    );
  }
}

void openDialog( BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: false,
    builder: (context) => AlertDialog(
      title: const Text('Error en llenar los campos'),
      content: const Text('Debe llenar todos los campos, Para poder crear un post'),
      
      actions: [
        FilledButton(onPressed: ()=>context.pop(), child: const Text('Aceptar'))
      ],
    )
    );
  }
