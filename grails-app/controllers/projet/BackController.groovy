package projet

class BackController {
    UserService userService

    def users()
    {
        def use= User.list()
      [users:use]
    }
}
