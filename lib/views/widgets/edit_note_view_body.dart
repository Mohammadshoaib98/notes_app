import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/CustomAppBar.dart';
import 'package:notes_app/views/widgets/custom_text_feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:24.0),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(
            icon: Icons.check, 
            title: 'Edit Note',
          ),
          SizedBox(height: 50,),
          CustomTextField(hint: 'Title',onSave: (onSave) {

            
          },),
          SizedBox(height: 16,),
          CustomTextField(hint: 'Content',maxLines: 5,)
        ],
      ),
    );
  }
}
