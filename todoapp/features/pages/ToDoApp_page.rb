class ToDoApp < SitePrism::Page

    set_url 'users/sign_in'
    element :tasks, :xpath, ("/html/body/div[1]/div[1]/div/div[2]/ul[1]/li[2]/a")
    element :email, '#user_email'
    element :password, '#user_password'
    element :singIn, 'input[value="Sign in"]'
    element :msgsucesso, '/html/body/div[1]/div[2]'
    element :novaTarefa, '#new_task'
    element :adicionar, :xpath, ("/html/body/div[1]/div[2]/div[1]/form/div[2]/span")


    def acess
        email.set 'arthur.mmachado@gmail.com'
        password.set '123456A@'
        singIn.click
    end

    def createTask
        email.set 'arthur.mmachado@gmail.com'
        password.set '123456A@'
        singIn.click
        tasks.click
        novaTarefa.set 'arthur123'
        adicionar.click
    end
end