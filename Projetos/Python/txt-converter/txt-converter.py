from app import app
from flask import render_template, redirect, request, flash



@app.route('/register', methods=['POST'])
def register():
    nome = request.form.get('username')
    senha = request.form.get('password')
    email = request.form.get('email')

    if len(nome) <= 2:
        flash('Nome deve ter mais de 2 caracteres')
        return redirect('/')
    else:
        return render_template("usuario.html")
    print('Nome:', nome)
    print('Senha:', senha)
    
    

    


if __name__ == '__main__':
    app.run(debug=True)