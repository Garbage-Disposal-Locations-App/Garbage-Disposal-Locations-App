/* 
child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            print("Check");
            Navigator.push(
              context, 
              PageTransition(
                child: HomePage(),
                type: PageTransitionType.fade,
                duration: Duration(milliseconds: 600)
              )
            );
          },
          child: Text('Go back!'),
        ), */