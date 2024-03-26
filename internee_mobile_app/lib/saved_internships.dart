import 'dart:ui';

import 'package:flutter/material.dart';

class Saved_Internships extends StatelessWidget {
  const Saved_Internships({super.key});

  static List pictures = [
    "https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://media.istockphoto.com/id/1834994607/photo/lock-network-security-wire-framed-lights-concept-wide.jpg?s=1024x1024&w=is&k=20&c=khz9IpdBylcEjlWFnz7O3KDWlsU4qWxszI8sJaG39sc=",
    "https://images.unsplash.com/photo-1637519290541-0a12b3185485?q=80&w=1509&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://media.istockphoto.com/id/1432637898/photo/button-with-the-python-on-the-yellow-keyboard-of-modern-laptop.jpg?s=1024x1024&w=is&k=20&c=vxmFcWl_VbUs-tVFW3in7IO6MP_aa6y135gkc7muA6Y=",
    "https://media.istockphoto.com/id/1413990965/photo/glowing-python-programming-language-code-on-a-blue-digital-surface-with-a-sphere-grid-design.jpg?s=1024x1024&w=is&k=20&c=7kHom8QK9tu7YPyXc59OU37uFIDzzlKEc_3DuoQsb_M=",
    "https://media.istockphoto.com/id/1445256568/photo/neon-programming-code.jpg?s=1024x1024&w=is&k=20&c=XNnWwG8ks-Y9996MFU_guKV2dRqEh2niVqw6ll-WrMc=",
    "https://images.unsplash.com/photo-1670057037226-b3d65909424f?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1607252650355-f7fd0460ccdb?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://media.istockphoto.com/id/1494104649/photo/ai-chatbot-artificial-intelligence-digital-concept.jpg?s=1024x1024&w=is&k=20&c=FQZBVxbXjhgPzm-W-5Jo3O7x7OXLPugwXzTKEu6nV3w=",
    "https://images.unsplash.com/photo-1599507593362-50fa53ed1b40?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ];

  static List name = [
    "Flutter",
    "Cyber Security",
    "Graphic Design",
    "Python",
    "Machine learning",
    "Html & CSS",
    "React Native",
    "Android",
    "Chatbot",
    "PHP developer"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff9f9f9),
      appBar: AppBar(
        title: Text(
          'Saved Internships',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xfff43a724),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Container(
                height: 65,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(pictures[index]),
                  ),
                  title: Text(name[index]),
                  subtitle: Text(
                    'Remote - 1 month',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                  ),
                  trailing: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Remove',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Color(0xfff43a724),
                          fontSize: 12),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
