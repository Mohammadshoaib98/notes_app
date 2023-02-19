
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_bottom.dart';
import 'package:notes_app/views/widgets/custom_text_feild.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: ListView(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: 'Title',
            onSave: (value) {
              value = title;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
            onSave: (value) {
              value = subTitle;
            },
          ),
          const SizedBox(
            height: 32,
          ),
          CustomBottom(
            onTap: () {
              if(formKey.currentState!.validate())
              {formKey.currentState!.save();}
              else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
            text: 'Add',
          ),
        ],
      ),
    );
  }
}
