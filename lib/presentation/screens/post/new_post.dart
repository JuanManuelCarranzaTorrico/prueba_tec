import 'package:flutter/material.dart';

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
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Title',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Description',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'UserId',
            ),
          ),
          //button on the bottom of the screen
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {}, 
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
