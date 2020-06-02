# -*- coding: utf-8 -*-
# Created by MuNGuia10 at 18/04/2020

@GoogleAccount
Feature: Funciones básicas de Selenium con BDD - Registro Cuenta Google
  # Funciones básicas de Selenium con BDD - Registro Cuenta Google

  @GoogleAccountControlErrores
  Scenario: Registro Cuenta Google - Errores campo Nombre
    Given Abrir la APP https://accounts.google.com/signup/v2/webcreateaccount?flowName=GlifWebSignIn&flowEntry=SignUp con el navegador CHROME
    And Cargar el DOM de la APP: google_account

    Given Introducir el valor  en el campo NombreInput
    And Hacer click sobre el botón SiguienteButton1
    Then Verificar el error Err_Nombre con el texto "Introduce tu nombre."

    Given Introducir el valor Rubén en el campo NombreInput
    And Informar el valor Tejedor Munguía en el campo ApellidosInput
    And Informar el valor rmunguia1077 en el campo NombreUsuarioInput
    And Informar el valor Udemy2020 en el campo PasswordInput
    And Informar el valor Udemy2020 en el campo ConfirmPasswordInput

    Given Hacer click sobre el botón SiguienteButton1
    Then Cambiar a la nueva ventana "Verificar"
    And Esperar 5 segundos
    And Verificar el HeadingText2 con el texto "Verifica tu teléfono"

    Then Cerrar la APP

  @GoogleAccountControlErrores
  Scenario: Registro Cuenta Google - Errores campo Apellidos
    Given Abrir la APP https://accounts.google.com/signup/v2/webcreateaccount?flowName=GlifWebSignIn&flowEntry=SignUp con el navegador EDGE
    And Cargar el DOM de la APP: google_account

    Given Introducir el valor Rubén en el campo NombreInput

    Given Introducir el valor  en el campo ApellidosInput
    And Hacer click sobre el botón SiguienteButton1
    Then Verificar el error Err_Apellidos con el texto "Introduce tus apellidos."

    Given Introducir el valor Tejedor Munguía en el campo ApellidosInput
    And Informar el valor rmunguia1077 en el campo NombreUsuarioInput
    And Informar el valor Udemy2020 en el campo PasswordInput
    And Informar el valor Udemy2020 en el campo ConfirmPasswordInput

    Given Hacer click sobre el botón SiguienteButton1
    Then Cambiar a la nueva ventana "Verificar"
    And Esperar 3 segundos
    And Verificar el HeadingText2 con el texto "Verifica tu teléfono"

    Then Cerrar la APP

  @GoogleAccountControlErrores
  Scenario: Registro Cuenta Google - Errores campo Nombre Usuario
    Given Abrir la APP https://accounts.google.com/signup/v2/webcreateaccount?flowName=GlifWebSignIn&flowEntry=SignUp con el navegador FIREFOX
    And Cargar el DOM de la APP: google_account

    Given Introducir el valor Rubén en el campo NombreInput
    And Informar el valor Tejedor Munguía en el campo ApellidosInput

    Given Introducir el valor  en el campo NombreUsuarioInput
    And Informar el valor Udemy2020 en el campo PasswordInput
    And Informar el valor Udemy2020 en el campo ConfirmPasswordInput
    And Hacer click sobre el botón SiguienteButton1
    Then Verificar el error Err_NombreUsuario1 con el texto "Elige una dirección de Gmail"
    
    And Esperar 3 segundos

    Given Introducir el valor   en el campo NombreUsuarioInput
    And Informar el valor Udemy2020 en el campo PasswordInput
    And Informar el valor Udemy2020 en el campo ConfirmPasswordInput
    And Hacer click sobre el botón SiguienteButton1
    Then Verificar el error Err_NombreUsuario2 con el texto "No puedes dejar este campo en blanco."

    And Esperar 3 segundos

    Given Introducir el valor rmunguia10 en el campo NombreUsuarioInput
    And Informar el valor Udemy2020 en el campo PasswordInput
    And Informar el valor Udemy2020 en el campo ConfirmPasswordInput
    And Hacer click sobre el botón SiguienteButton1
    Then Verificar el error Err_NombreUsuario3 con el texto "Ese nombre de usuario ya está en uso. Prueba con otro."

    And Esperar 3 segundos

    Given Introducir el valor rmunguia1077 en el campo NombreUsuarioInput
    And Informar el valor Udemy2020 en el campo PasswordInput
    And Informar el valor Udemy2020 en el campo ConfirmPasswordInput

    Given Hacer click sobre el botón SiguienteButton1
    Then Cambiar a la nueva ventana "Verificar"
    And Esperar 3 segundos
    And Verificar el HeadingText2 con el texto "Verifica tu teléfono"

    Then Cerrar la APP

  @GoogleAccountControlErrores
  Scenario: Registro Cuenta Google - Errores campo Contraseña
    Given Abrir la APP https://accounts.google.com/signup/v2/webcreateaccount?flowName=GlifWebSignIn&flowEntry=SignUp con el navegador CHROME
    And Cargar el DOM de la APP: google_account

    Given Introducir el valor Rubén en el campo NombreInput
    And Informar el valor Tejedor Munguía en el campo ApellidosInput
    And Informar el valor rmunguia1077 en el campo NombreUsuarioInput

    Given Introducir el valor  en el campo PasswordInput
    And Informar el valor Udemy2020 en el campo ConfirmPasswordInput
    And Hacer click sobre el botón SiguienteButton1
    And Esperar 3 segundos
    Then Verificar el error Err_Password1 con el texto "Introducir una contraseña"

    Given Introducir el valor Udemy en el campo PasswordInput
    And Informar el valor Udemy2020 en el campo ConfirmPasswordInput
    And Hacer click sobre el botón SiguienteButton1
    And Esperar 3 segundos
    Then Verificar el error Err_Password2 con el texto "Usa 8 caracteres como mínimo para la contraseña"

    Given Introducir el valor Udemy2020 en el campo PasswordInput
    And Informar el valor Udemy2020 en el campo ConfirmPasswordInput

    Given Hacer click sobre el botón SiguienteButton1
    Then Cambiar a la nueva ventana "Verificar"
    And Esperar 3 segundos
    And Verificar el HeadingText2 con el texto "Verifica tu teléfono"

    Then Cerrar la APP

  @GoogleAccountControlErrores
  Scenario: Registro Cuenta Google - Errores campo Confirmar Contraseña
    Given Abrir la APP https://accounts.google.com/signup/v2/webcreateaccount?flowName=GlifWebSignIn&flowEntry=SignUp con el navegador EDGE
    And Cargar el DOM de la APP: google_account

    Given Introducir el valor Rubén en el campo NombreInput
    And Informar el valor Tejedor Munguía en el campo ApellidosInput
    And Informar el valor rmunguia1077 en el campo NombreUsuarioInput
    And Informar el valor Udemy2020 en el campo PasswordInput

    Given Introducir el valor  en el campo ConfirmPasswordInput
    And Hacer click sobre el botón SiguienteButton1
    Then Verificar el error Err_ConfirmPassword1 con el texto "Confirma tu contraseña"
    
    And Esperar 3 segundos

    Given Introducir el valor Udemy en el campo ConfirmPasswordInput
    And Hacer click sobre el botón SiguienteButton1
    Then Verificar el error Err_ConfirmPassword2 con el texto "Estas contraseñas no coinciden; inténtalo de nuevo."

    And Esperar 3 segundos

    Given Introducir el valor Udemy2020 en el campo ConfirmPasswordInput

    Given Hacer click sobre el botón SiguienteButton1
    Then Cambiar a la nueva ventana "Verificar"
    And Esperar 5 segundos
    And Verificar el HeadingText2 con el texto "Verifica tu teléfono"

    Then Cerrar la APP

  @GoogleAccountControlErrores
  Scenario: Registro Cuenta Google - Errores campo Teléfono
    Given Abrir la APP https://accounts.google.com/signup/v2/webcreateaccount?flowName=GlifWebSignIn&flowEntry=SignUp con el navegador FIREFOX
    And Cargar el DOM de la APP: google_account

    Given Introducir el valor Rubén en el campo NombreInput
    And Informar el valor Tejedor Munguía en el campo ApellidosInput
    And Informar el valor rmunguia1077 en el campo NombreUsuarioInput
    And Informar el valor Udemy2020 en el campo PasswordInput
    And Informar el valor Udemy2020 en el campo ConfirmPasswordInput

    Given Hacer click sobre el botón SiguienteButton1
    Then Cambiar a la nueva ventana "Verificar"
    And Esperar que el campo PhoneInput se haya cargado y sea clickable
    And Informar el valor  en el campo PhoneInput
    And Hacer click sobre el botón SiguienteButton2
    Then Verificar el error Err_Phone1 con el texto "Introduce un número de teléfono."

    And Esperar 3 segundos

    And Informar el valor 999 08 74 76 en el campo PhoneInput
    And Hacer click sobre el botón SiguienteButton2
    Then Verificar el error Err_Phone2 con el texto "El formato de este número de teléfono no se reconoce. Comprueba el país y el número."

    And Esperar 3 segundos

    """
    Given Introducir el valor 616 08 74 76 en el campo PhoneInput
    And Hacer click sobre el botón SiguienteButton2
    Then Cambiar a la nueva ventana "Código"
    And Esperar 3 segundos
    And Verificar el HeadingText con el texto "Verifica tu teléfono"
    """

    Then Cerrar la APP


  @GoogleAccountControlErrores
  Scenario Outline: Registro Cuenta Google - Errores campo Código
    Given Abrir la APP https://accounts.google.com/signup/v2/webcreateaccount?flowName=GlifWebSignIn&flowEntry=SignUp con el navegador EDGE
    And Cargar el DOM de la APP: google_account

    Given Introducir el valor Rubén en el campo NombreInput
    And Informar el valor Tejedor Munguía en el campo ApellidosInput
    And Informar el valor rmunguia1077 en el campo NombreUsuarioInput
    And Informar el valor Udemy2020 en el campo PasswordInput
    And Informar el valor Udemy2020 en el campo ConfirmPasswordInput

    Given Hacer click sobre el botón SiguienteButton1
    Then Cambiar a la nueva ventana "Verificar"
    And Esperar que el campo PhoneInput se haya cargado y sea clickable

    Given Introducir el valor 616 08 74 76 en el campo PhoneInput
    And Hacer click sobre el botón SiguienteButton2
    Then Cambiar a la nueva ventana "Código"
    And Esperar que el campo CodigoInput se haya cargado y sea clickable
    And Informar el valor  en el campo CodigoInput
    And Hacer click sobre el botón SiguienteButton2
    Then Verificar el error Err_VerificarPhone1 con el texto "Introduce un código"

    And Esperar 3 segundos

    And Informar el valor 1234567 en el campo CodigoInput
    And Hacer click sobre el botón SiguienteButton2
    Then Verificar el error Err_VerificarPhone2 con el texto "La cantidad de dígitos no es correcta. Inténtalo de nuevo."

    And Esperar 3 segundos

    And Informar el valor 123456 en el campo CodigoInput
    And Hacer click sobre el botón SiguienteButton2
    Then Verificar el error Err_VerificarPhone3 con el texto "El código es incorrecto. Inténtalo de nuevo."

    Then Cerrar la APP


  @GoogleAccountRegistro
  Scenario: Registro Cuenta Google Completo
    Given Abrir la APP https://accounts.google.com/signup/v2/webcreateaccount?flowName=GlifWebSignIn&flowEntry=SignUp con el navegador CHROME
    And Cargar el DOM de la APP: google_account

    Given Verificar la presencia de la imagen LogoImage
    And Verificar el HeadingText con el texto "Crea una cuenta de Google"

    Given Hacer click sobre el link "InicioSesionLink"
    Then Cambiar a la nueva ventana "Iniciar sesión"
    And Esperar que se haya cargado la página y volver al registro

    Given Verificar la lista de IdiomaList disponible y pulsar EnglishList
    And Esperar 5 segundos
    And Verificar el HeadingText con el texto "Create your Google Account"

    Given Verificar la lista de IdiomaList disponible y pulsar EspañolList
    And Esperar 5 segundos
    And Verificar el HeadingText con el texto "Crea una cuenta de Google"

    Given Introducir el valor Rubén en el campo NombreInput
    And Informar el valor Tejedor Munguía en el campo ApellidosInput
    And Verificar el NombreUsuarioRules con el texto "Puedes utilizar letras, números y puntos"
    And Hacer click sobre el botón DirActualButton
    And Verificar el DirActualText con el texto "Deberás confirmar que esta dirección de correo electrónico es tuya."
    And Hacer click sobre el botón CrearCuentaButton
    And Informar el valor rmunguia1077 en el campo NombreUsuarioInput
    And Informar el valor Udemy2020 en el campo PasswordInput
    And Informar el valor Udemy2020 en el campo ConfirmPasswordInput
    And Hacer click sobre el link VerPasswordLink
    And Verificar el PasswordRules con el texto "Utiliza ocho caracteres como mínimo con una combinación de letras, números y símbolos"

    Given Verificar la presencia de la imagen GoogleImage
    And Verificar el GoogleImageText con el texto "Una cuenta. Todo Google a tu disposición."

    Given Hacer click sobre el link "AyudaLink"
    Then Cambiar a la nueva ventana "Ayuda"
    And Esperar 3 segundos
    And Verificar el AyudaText con el texto "¿Cómo podemos ayudarte?"
    And Cerrar el driver y hacer foco en la ventana "Principal"

    Given Hacer click sobre el link "PrivacidadLink"
    Then Cambiar a la nueva ventana "Privacidad"
    And Esperar 10 segundos
    And Verificar el PrivacidadText con el texto "POLÍTICA DE PRIVACIDAD DE GOOGLE"
    And Cerrar el driver y hacer foco en la ventana "Principal"

    Given Hacer click sobre el link "TerminosLink"
    Then Cambiar a la nueva ventana "Terminos"
    And Esperar 10 segundos
    And Verificar el TerminosText con el texto "TÉRMINOS DEL SERVICIO DE GOOGLE"
    And Cerrar el driver y hacer foco en la ventana "Principal"

    Given Hacer click sobre el botón SiguienteButton1
    Then Cambiar a la nueva ventana "Verificar"
    And Esperar que el campo PhoneInput se haya cargado y sea clickable

    """
    And Informar el valor 616 08 74 76 en el campo PhoneInput

    Given Hacer click sobre el botón SiguienteButton2
    Then Cambiar a la nueva ventana "Código"
    And Esperar que el campo CodigoInput se haya cargado y sea clickable
    And Informar el valor 123456 en el campo CodigoInput
    And Hacer click sobre el botón SiguienteButton2
    Then Verificar el error Err_VerificarPhone3 con el texto "El código es incorrecto. Inténtalo de nuevo."
    """

    Then Cerrar la APP