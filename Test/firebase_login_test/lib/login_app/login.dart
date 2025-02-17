import 'package:firebase_login_test/my_button/my_button.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: _buildButton(),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MyButton(
              image: Image.asset('image/glogo.png'),
              text: Text(
                'Login with Google',
                style: TextStyle(color: Colors.black87, fontSize: 15.0),
              ),
              color: Colors.white,
              radius: 4.0,
              onPressed: () {}),
          SizedBox(
            height: 10.0,
          ),
          MyButton(
              image: Image.asset('image/flogo.png'),
              text: Text(
                'Login with Facebook',
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              color: Color(0xFF334D92),
              radius: 4.0,
              onPressed: () {}),
          SizedBox(
            height: 10.0,
          ),
          ButtonTheme(
            height: 50.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  Text(
                    'Login with Email',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
