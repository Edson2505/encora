Feature: Los usuarios quieren hacer registros exitosos y poder logearse en la web de pruebas.



  @usuarioRegistroOK
  Scenario Outline: Validar que el usuario tenga un registro exitoso
    Given se abre la pagina web
    When el usuario selecciona registrar
    And el usuario llena el campo "<nombre>", "<apellido>"
    And el usuario llena el campo direccion "<direccion>"
    And el usuario llena el campo ciudad "<ciudad>"
    And el usuario llena el campo provincia "<provincia>"
    And el usuario llena el campo codigo postal "<codigo>"
    And el usuario llena el campo telefono "<telefono>"
    And el usuario llena el campo ssn "<ssn>"
    And el usuario llena el campo username "<username>"
    And el usuario llena el campo password "<clave>"
    And el usuario llena el campo confirmar password "<confirmarClave>"
    And el usuario selecciona enviar
    Then el texto buscado es "<respuesta>"
    Examples:
      | nombre | apellido | telefono | ssn     | direccion    | ciudad | provincia | codigo | username | clave | confirmarClave | respuesta                                                         |
      | Edson | Rodriguez | 923456789 | 8765432 | avenida abancay lima | lima   | Lima      | 87601  | Edsonrodri12 | Edsonrodri12 |  Edsonrodri12     | Your account was created successfully. You are now logged in. |


  @usuarioLoginOK
  Scenario Outline: Realizar logeo de usuario
    Given se abre la pagina web
    When el usuario se logea "<usuario>", "<clave>"
    And el usuario selecciona ingresar
    Then el usuario esta en la pagina de inicio
    Examples:
      | usuario | clave |
      | Edsonrodri12 | Edsonrodri12 |

