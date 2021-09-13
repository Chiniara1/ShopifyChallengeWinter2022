# README

This is Anthony Chiniara's submission for the Shopify Winter 2022 Developer Challenge. I decided to make the application with ruby on rails, a technology that I've never used before, since it's part of Shopify's tech-stack. I had to research and learn this new technology to be able to present this application I developped.

Ruby version: 3.0.2

In order to run the application, run the following commands:
```sh
$ bundle install
$ rails s
```

This should launch a local server with the application. In the console you should see ``Listening on http://127.0.0.1:3000`` or another local ip, you can copy that url and paste it into your browser to access the application.

When opening the application for the first time you should land on the Login page. You should see in the header three buttons, an Images button on the top right (which will redirect you to the login page since you aren't logged in yet), a Log in button and a Sign up button on the top left. If you don't have an account yet click on Sign up. If you do, then enter your email and password and click Log in.

On the Sign up page you'll see four text fields: Username, email, password and password confirmation. Enter your desired Username which must be unique, no two users will never have the same Username. Then enter your email, which should follow proper email formatting and also be unique. Finally enter your password in both bottom fields, your password should be at least 6 characters long and match the password confirmation. Once all fields are filled click the Create my account button and if everything checks out, your account will be created and you will be redirected to a welcome page.

Once on the welcome page, some of the buttons on the right of the header will have changed. You now have the buttons View All Users and Log Out. You should also notice a button in the middle of the screen that shares the same name as the button on the left of the header, which is Images.

On the Images page, if you have any images or if any other public images are in the database you'll be able to see them here. You'll also notice a highlighted text called New Image. If you click that you will be redirected to a form used to submit a new image to the database. When submitting a new image you'll be asked to add a title, a description, the image file itself and if you want the picture to be private or not (if you decide to make it private, other users won't be able to see it in the Images view). After filling out the form, you can click Confirm, then you'll be redirected to a quick preview or your newly added picture. You'll then be able to click Edit to fix any mistake you might have made during the creation or Back to return to the Images page. If you didn't have any Images added before, you'll now be able to see your newly added Image in the table. You'll also be able to see it's title, description and the user who added it. On the right side of the image entry you'll see three buttons: Show (which will redirect you to the page where you could preview the image), Edit (where you'll be able to modify the image) and Destroy (which will delete the image). If the image does not belong to you, you won't be able to see the Edit or Destroy buttons. If you decided to make your image private, then you will be the only person who's going to be able to see it in this table.

If you click the View All Users button on the top right, you'll be redirected to a page that lists every user who registered to the application, as well as their User IDs.


To run the tests you need to run the following command:
```sh
$ bin/rails test
```

