import 'dart:ffi';
import 'dart:io';

/*void main() {
  print('Digite el numero');
  String numStr = stdin.readLineSync().toString();
  int num = int.parse(numStr);
  if (num >= 5) {
    if (num >= 10) {
      print('es mayor o igual a 10');
    } else {
      print('es mayor o igual a 5');
    }
  } else if (num == 2) {
    print('es 2');
  } else {
    print('es menor a 5');
  }
} */
/*void main() {
  print('digite km o ml');
  String unit = stdin.readLineSync().toString();
  if (unit == 'km' || unit == 'ml') {
    print('digite el valor que desea convertir ${unit}');
    double value = double.parse(stdin.readLineSync().toString());
    double result;
    if (unit == "km") {
      result = value / 1.60934;
    } else {
      result = 1.60934 * value;
    }
    print(result);
  } else {
    print('porfavor ingresar bien la unidad de medida');
  }
} */

//unit == 'km' || unit == 'ml'
//si alguna de las dos cedulas tiene un caracter diferente a un numero que diga cedula invalida

/*void main() {
  print('digite la cedula 1');
  String number_id = stdin.readLineSync().toString();
  if (number_id.contains('.') || number_id.contains(' ')) {
    print('cedula incorrecta');
  }

  print('digite cedula 2');
  String number_id2 = stdin.readLineSync().toString();
  if (number_id2.contains('.') || number_id2.contains(' ')) {
    print('cedula incorrecta');
  }

  if (number_id == number_id2) {
    print('son iguales las cedulas');
  } else {
    print('no son iguales las cedulas');
  }
}*/

//str1.contains('1');

//cond1 || cond2
//cond1 && cond2

/*void main() {
  bool repeat = true;

  while (repeat) {
    print('digite el numero');
    int num = int.parse(stdin.readLineSync().toString());

    if (num >= 1) {
      int cont = 2;
      bool is_divisor = false;
      while (num > cont) {
        is_divisor = num % cont == 0;
        cont = cont + 1;

        if (is_divisor) {
          break;
        }
      }
      if (is_divisor) {
        print('no es primo');
      } else {
        print('es primo');
      }
    } else {
      print('el numero debe ser mayor o igual a 1');
    }
    print(
        'quieres seguir digitando numeros? .toque la tecla 1 si quiere y 2 si no quiere seguir');
    String num1 = stdin.readLineSync().toString();

    if (num1 == '1') {
      repeat = true;
    } else {
      break;
    }
  }
} */

/*void main() {
  bool repeat = true;
  ;
  while (repeat) {
    print('digite la cantidad de numeros');
    int numeros = int.parse(stdin.readLineSync().toString());
    if (numeros >= 1) {
      print('digite la base');
      int base = int.parse(stdin.readLineSync().toString());
      int cont = 1;
      print('iniciando conteo');

      while (cont <= numeros) {
        print(base * cont);
        cont = cont + 1;
      }
      print(
          'quieres seguir digitando numeros? .toque la tecla 1 si quiere y 2 si no quiere seguir');
      String reintentar = stdin.readLineSync().toString();

      if (reintentar == '1') {
        repeat = true;
      } else {
        break;
      }
    }
  }
} */

/*void main() {
  bool repeat = true;
  while (repeat) {
    print('anota el primer numero');
    int num1 = int.parse(stdin.readLineSync().toString());
    print('anota el segundo numero ');
    int num2 = int.parse(stdin.readLineSync().toString());
    bool mcd_found = false;

    for (int cont = 2; cont <= num1 && cont <= num2 && !mcd_found; cont++) {
      if (num1 % cont == 0 && num2 % cont == 0) {
        mcd_found = true;
        print('${cont} es el minimo comun Divisor ');
      }
    }

    if (mcd_found == false) {
      print('Estos numeros no tienen minimo comun divisor.');
    }
    print(
        'quieres seguir escogiendo el minimo comun divisor? .oprima la tecla 1 si quiere y 2 si no quiere seguir');
    String reintentar = stdin.readLineSync().toString();

    if (reintentar != '1') {
      break;
    }
  }
} */
/*void main() {
  bool repeat = true;
  while (repeat) {
    print('digite N');
    int num = int.parse(stdin.readLineSync().toString());
    int cont = 1;
    print('digite valor inicial');
    int storage = int.parse(stdin.readLineSync().toString());

    while (cont <= num) {
      storage = storage + cont;
      cont += 1;
    }

    print(storage);
    print(
        'quieres seguir digitando numeros ? . oprima la tecla 1 si quiere y 2 si no quiere seguir');
    String reintentar = stdin.readLineSync().toString();

    if (reintentar != '1') {
      break;
    }
  }
} */

/*void main() {
  bool repeat = true;
  while (repeat) {
    print('digite N (fibonacci)');
    int num = int.parse(stdin.readLineSync().toString());
    int sum = 0;
    print('digite el primer numero');
    int fib1 = int.parse(stdin.readLineSync().toString());
    print('digite el segundo numero');
    int fib2 = int.parse(stdin.readLineSync().toString());
    print('digite el tercer numero');
    int fib3 = int.parse(stdin.readLineSync().toString());

    if (num < 4) {
      if (num == 1) {
        print(fib1);
      }
      if (num == 2) {
        print(fib2);
      }
      if (num == 3) {
        print(fib3);
      }
    } else {
      for (int i = 4; i <= num; i++) {
        sum = fib1 + fib2 + fib3;
        fib1 = fib2;
        fib2 = fib3;
        fib3 = sum;
      }
      print(sum);
    }

    print(
        'quieres seguir digitando N ?. oprima la tecla 1 si quiere y 2 si no quiere seguir');
    String reintentar = stdin.readLineSync().toString();

    if (reintentar != '1') {
      break;
    }
  }
} */

/*void main() {
  print('digite valor inicial');
  int valor_inicial = int.parse(stdin.readLineSync().toString());

  print('digite el incremento de valor inicial');
  int increase = int.parse(stdin.readLineSync().toString());

  print('digite el limite ');
  int limit = int.parse(stdin.readLineSync().toString());

  int sum = valor_inicial;
  print(valor_inicial);
  for (int i = 1; i <= limit - 1; i++) {
    sum = sum + increase;
    print(sum);
  }
} */

/*void main() {
  print('digite numero factorial');
  int num = int.parse(stdin.readLineSync().toString());
  int factorial = 1;
  int cont = 1;

  while (cont < num) {
    cont = cont + 1;
    factorial = factorial * cont;
  }
  print(factorial);
} */

/*void main() {
  bool repeat = true;
  while (repeat) {
    int cont = 1;
    print('digite el numero de intentos ');
    int limit = int.parse(stdin.readLineSync().toString());
    while (limit <= 0) {
      print('porfavor digitar un numero mayor que cero.');
      print('digite el intento nuevamente');
      limit = int.parse(stdin.readLineSync().toString());
    }
    int random = Random().nextInt(100) + 1;

    while (cont <= limit) {
      cont = cont + 1;
      print('adivine el numero');
      int num = int.parse(stdin.readLineSync().toString());
      while (num > 100 || num <= 0) {
        print('porfavor digite un numero entre 1 y 100');
        print('adivine el numero');
        num = int.parse(stdin.readLineSync().toString());
      }

      if (num < random) {
        print('el numero que busca es mayor');
      }
      if (num > random) {
        print('el numero que busca es menor ');
      }
      if (num == random) {
        print('FECILITACIONES . encontraste el numero ');
        print(random);
        break;
      }
    }

    print(
        'quieres volver a jugar  ? . oprima la tecla 1 si quiere y 2 si no quiere seguir');
    String reintentar = stdin.readLineSync().toString();

    if (reintentar != '1') {
      break;
    }
  }
}

//do {
  //intrucciones a repetir
//}  while(condicion);*/

/*void main() {
  print('digite la cantidad  de notas ');
  int num = int.parse(stdin.readLineSync().toString());
  double final_note = 0;
  double final_weighing = 0;
  int cont = 0;

  while (cont < num) {
    cont = cont + 1;
    print('Digite la nota #${cont}');
    double note = double.parse(stdin.readLineSync().toString());
    while (note > 5 || note < 0) {
      print('la nota tiene que ser de 5 pa abajo mi hermanito');
      print('digite bien la nota');
      note = double.parse(stdin.readLineSync().toString());
    }
    double note_weight = 0;
    if (cont == num) {
      note_weight = 100 - final_weighing;
    } else {
      print('digite la ponderacion de la nota ${cont}');
      note_weight = double.parse(stdin.readLineSync().toString());
      while (note_weight > 100 || note_weight <= 0) {
        print('la ponderacion tiene que ser entre 1 y 100% manito lindo');
        print('corrija la ponderacion');
        note_weight = double.parse(stdin.readLineSync().toString());
      }
    }
    final_note = final_note + note * (note_weight / 100);
    final_weighing = final_weighing + note_weight;
  }
  print("final_note = ${final_note}");
  print('final_weighing = ${final_weighing}');

  if (final_weighing == 100) {
    print('esta es la nota definitiva');
  } else {
    print('porfavor verificar la ponderacion');
    print('vuelva a digitar la ponderacion');
  }
} */

// void main() {
//   print('digite el numero inferior');
//   int num1 = int.parse(stdin.readLineSync().toString());
//   print('digite el numero superior');
//   int num2 = int.parse(stdin.readLineSync().toString());
//   int cont = num1;

//   while (cont <= num2) {
//     if (cont % 2 == 0) {
//       print(cont);
//     }

//     cont = cont + 1;
//   }
// }

// void main() {
//   print('digite el numero inferior');
//   int num1 = int.parse(stdin.readLineSync().toString());
//   print('digite el numero superior');
//   int num2 = int.parse(stdin.readLineSync().toString());
//   int cont = num1;
//   List<int> arr = [];

//   while (cont <= num2) {
//     if (cont % 2 == 0) {
//       arr.add(cont);
//     }

//     cont = cont + 1;
//   }
//   print(arr);
//   print(arr.length);
//   int sum = 0;
//   for (int i = 0; i < arr.length; i++) {
//     sum = sum + arr[i];
//   }
//   print("Suma: ${sum}");
//   print("Promedio: ${sum / arr.length}");
// }

// void main() {
//   bool repeat = true;
//   while (repeat) {
//     print('digite la cantidad de elementos');
//     int limit = int.parse(stdin.readLineSync().toString());
//     int element = 0;
//     List<int> arr = [];
//     int cont = 1;

//     while (cont <= limit) {
//       print('elemento #${cont} ');
//       element = int.parse(stdin.readLineSync().toString());
//       arr.add(element);

//       cont = cont + 1;
//     }
//     print(arr);
//     print(arr.length);
//     int sum = 0;
//     for (int i = 0; i < arr.length; i++) {
//       sum = sum + arr[i];
//     }
//     print("Suma element: ${sum}");
//     print("Promedio: ${sum / arr.length}");

//     print(
//         'quieres volver a digitar? . oprima la tecla 1 si quiere y 2 si no quiere seguir');
//     String reintento = stdin.readLineSync().toString();

//     if (reintento != '1') {
//       break;
//     }
//   }
// }

// void main() {
//   List<int> vector1 = [];
//   List<int> vector2 = [];
//   List<int> vector3 = [];
//   int vectors_lenght = 5;

//   for (int i = 0; i < vectors_lenght; i++) {
//     int random = Random().nextInt(10) + 1;
//     vector1.add(random);
//     random = Random().nextInt(10) + 1;
//     vector2.add(random);
//     random = Random().nextInt(10) + 1;
//     vector3.add(random);
//   }
//   List<int> vector4 = [];
//   for (int i = 0; i < vectors_lenght; i++) {
//     vector4.add(vector1[i] + vector2[i] + vector3[i]);
//   }
//   print("vector1 = ${vector1}");
//   print("vector2 = ${vector2}");
//   print("vector3 = ${vector3}");
//   print("vector4 = ${vector4}");
// }

// void main() {
//   List<int> edades = [];
//   L people_max_age = [];
//   int min_age = 0;ist nombres = [];
//   int cont = 1;
//   int max_age = 0;
//   int max_age_index = 0;
//   List<int>
//   int min_age_index = 0;
//   while (true) {
//     print('escribe el nombre del alumno#${cont}');
//     var names = stdin.readLineSync().toString();
//     if (names == '*') {
//       break;
//     }

//     nombres.add(names);

//     print('digite la edad del alumno#${cont}');

//     int age = int.parse(stdin.readLineSync().toString());

//     edades.add(age);

//     if (age >= 18) {
//       people_max_age.add(cont - 1);
//     }
//     if (age > max_age) {
//       max_age = age;
//       max_age_index = cont - 1;
//     }
//     if (age <= min_age || min_age == 0) {
//       min_age = age;
//       min_age_index = cont - 1;
//     }
//     cont = cont + 1;
//   }
//   print('los alumnos mayores de edad son: ');
//   for (int i = 0; i < people_max_age.length; i++) {
//     int index = people_max_age[i];
//     String name = nombres[index];

//     int age = edades[index];

//     print('${name} tiene ${age}');
//   }
//   print(
//       'el alumno de mayor edad se llama ${nombres[max_age_index]} y tiene ${edades[max_age_index]}');
//   print(
//       'el alumnno de menor edad se llama ${nombres[min_age_index]} y tiene ${edades[min_age_index]}');
// }

// void main() {
//   List<int> precio_articulos = [];
//   List arr1 = [];
//   List arr2 = [];
//   List arr3 = [];
//   List arr4 = [];

//   for (int i = 0; i < 5; i++) {
//     int random_price = Random().nextInt(1000) + 1;
//     precio_articulos.add(random_price);
//   }
//   print('LOS PRECIOS DE LOS ARTICULOS SON ${precio_articulos} USD');

//   for (int i = 0; i < 5; i++) {
//     int random_sales = Random().nextInt(1000) + 1;
//     arr1.add(random_sales);
//     random_sales = Random().nextInt(1000) + 1;
//     arr2.add(random_sales);
//     random_sales = Random().nextInt(1000) + 1;
//     arr3.add(random_sales);
//     random_sales = Random().nextInt(1000) + 1;
//     arr4.add(random_sales);
//   }
//   print('ventas sucursal#1 ${arr1} unidades');
//   print('ventas sucursal#2 ${arr2} unidades');
//   print('ventas sucursal#3 ${arr3} unidades');
//   print('ventas sucursal#4 ${arr4} unidades');

//   List<int> ventas_totales = [];
//   for (int i = 0; i < precio_articulos.length; i++) {
//     ventas_totales.add(arr1[i] + arr2[i] + arr3[i] + arr4[i]);
//   }

//   print("cantidades totales de cada articulo = ${ventas_totales}");

//   //cantidad de articulos en la sucursal 2
//   int art_sucu_2 = arr2[4] + arr2[3] + arr2[2] + arr2[1] + arr2[0];

//   print('la cantidad de articulos en la sucursal 2 es ${art_sucu_2}');

//   //cantidad de articulo 3 en la sucursal 1

//   int art_sucu_3 = arr1[2];

//   print('cantidad de articulo 3 en la sucursal 1:  ${art_sucu_3}');

//   // recaudacion total de cada sucursal

//   int recaud_total_sucu1 = arr1[0] * precio_articulos[0] +
//       arr1[1] * precio_articulos[1] +
//       arr1[2] * precio_articulos[2] +
//       arr1[3] * precio_articulos[3] +
//       arr1[4] * precio_articulos[4];

//   print('recaudacion total sucursal 1 ${recaud_total_sucu1}');

//   int recaud_total_suc2 = arr2[0] * precio_articulos[0] +
//       arr2[1] * precio_articulos[1] +
//       arr2[2] * precio_articulos[2] +
//       arr1[3] * precio_articulos[3] +
//       arr1[4] * precio_articulos[4];
//   print('recaudacion total sucursal 2 ${recaud_total_suc2}');

//   int recaud_total_suc3 = arr3[0] * precio_articulos[0] +
//       arr3[1] * precio_articulos[1] +
//       arr3[2] * precio_articulos[2] +
//       arr3[3] * precio_articulos[3] +
//       arr3[4] * precio_articulos[4];

//   print('recaudacion total sucursal 3 ${recaud_total_suc3}');

//   int recaud_total_suc4 = arr4[0] * precio_articulos[0] +
//       arr4[1] * precio_articulos[1] +
//       arr4[2] * precio_articulos[2] +
//       arr4[3] * precio_articulos[3] +
//       arr4[4] * precio_articulos[4];

//   print('recaudacion total sucursal 4  ${recaud_total_suc4}');

//   //la recaudacion totaal de la empresa

//   int recaud_total_empresa = recaud_total_sucu1 +
//       recaud_total_suc2 +
//       recaud_total_suc3 +
//       recaud_total_suc4;

//   print('recaudacion total de la empresa  ${recaud_total_empresa}');

//   //sucursal de mayor recaudacion

//   if (recaud_total_sucu1 > recaud_total_suc2 &&
//       recaud_total_sucu1 > recaud_total_suc3 &&
//       recaud_total_sucu1 > recaud_total_suc4) {
//     print('la sucursal de mayor recaudacion:${recaud_total_sucu1}');
//   }

//   if (recaud_total_suc2 > recaud_total_suc3 &&
//       recaud_total_suc2 > recaud_total_suc4) {
//     print('la sucursal de mayor recaudacion:${recaud_total_suc2}');
//   }

//   if (recaud_total_suc3 > recaud_total_suc4) {
//     print('la sucursal de mayor recaudacion:${recaud_total_suc3}');
//   } else {
//     print('la sucursal de mayor recaudacion:${recaud_total_suc4}');
//   }
// }

// void main() {
//   print('digite tipo fib ');
//   int tipo_fib = int.parse(stdin.readLineSync().toString());
//   print('digite N');
//   int num = int.parse(stdin.readLineSync().toString());

//   List<int> arr = [];

//   for (int i = 0; i < tipo_fib; i++) {
//     print('digite el elemento ${i + 1} de la series');

//     int element = int.parse(stdin.readLineSync().toString());

//     arr.add(element);
//   }

//   for (int i = 0; i < num + 1 - tipo_fib; i++) {
//     int sum = 0;

//     for (int j = 0; j < tipo_fib; j++) {
//       sum = sum + arr[arr.length - 1 - j];

//       // print(arr.length);

//       print('suma ${sum}');
//       print(arr);

//       // print(tipo_fib);
//     }
//     arr.add(sum);
//   }
// }

// void main() {
//   List<double> arr_temp_max = [];
//   List<double> arr_temp_min = [];
//   double temp_max = 0;
//   double temp_min = 0;

//   for (int i = 0; i <= 4; i++) {
//     print('ingresa la temperatura maxima del dia ${i}');
//     temp_max = double.parse(stdin.readLineSync().toString());
//     arr_temp_max.add(temp_max);

//     print('ingresa la temperatura minima del dia ${i} ');
//     temp_min = double.parse(stdin.readLineSync().toString());

//     arr_temp_min.add(temp_min);
//   }
// //media de temperatura
//   List<double> media = [];

//   for (int i = 0; i <= 4; i++) {
//     double current_media = (arr_temp_max[i] + arr_temp_min[i]) / 2;

//     media.add(current_media);
//   }
//   print(arr_temp_min);
//   print(arr_temp_max);
//   print(media);

//   // 1 dia  con menos temperatura

//   double min_med_temp = media[0];
//   int pos_min_temp = 0;
//   for (int i = 0; i < media.length; i++) {
//     if (min_med_temp > media[i]) {
//       min_med_temp = media[i];
//       pos_min_temp = i;
//     }
//   }
//   print('el dia con menor temperatura es ${pos_min_temp}');

//   print('___________________________________________');

//   print('digite la temperatura maxima a mostrar ');
//   double var_temp = double.parse(stdin.readLineSync().toString());
//   List<int> dias_temp_max = [];

//   for (int i = 0; i < arr_temp_max.length; i++) {
//     if (var_temp == arr_temp_max[i]) {
//       dias_temp_max.add(i);
//     }
//   }
//   print('los dias que la temperatura maxima coincide es ${dias_temp_max}');
//   if (arr_temp_max.length == 0) {
//     print('no hay ninguna temperatura   que coincida con los dias ');
//   }
// }

//
//

// void main() {
//   List<String> words = [];

//   read_words(words);
//   search_words(words);
// }

// void read_words(List<String> w) {
//   int cont = 1;

//   while (cont > 0) {
//     print('digite la palabra # ${cont}');
//     String papijavi = readString();

//     w.add(papijavi);

//     if (papijavi == '*') {
//       break;
//     }

//     cont = cont + 1;
//   }
// }

// void search_words(List<String> w) {
//   bool repetir = true;
//   while (repetir) {
//     print('Digite la palabra "buscar " ');
//     String search = readString();

//     for (int i = 0; i < w.length; i++) {
//       if (w[i] == search) {
//         print('la palabra que busca esta en el indice ${i}');
//       }
//     }

//     print('desea repetir digite   si.  (1)   no. (2)');
//     int cualquier = int.parse(stdin.readLineSync().toString());
//     cualquier == 1;

//     if (cualquier == 2) {
//       repetir = false;
//     }
//   }
// }

// String readString() {
//   return stdin.readLineSync().toString();
// }

// void main() {
//   bool repeat = true;
//   while (repeat) {
//     print('digite el numero  1 ');
//     int num1 = read_int();

//     print('digite el numero 2 ');

//     int num2 = read_int();

//     if (esMultiple(num1, num2)) {
//       print('si');
//     } else {
//       print('no');
//     }
//     print('desea repetir digite   si.  (1)   no. (2)');
//     int cualquier = read_int();

//     if (cualquier == 2) {
//       repeat = false;
//     }
//   }
// }

// int read_int() {
//   return int.parse(stdin.readLineSync().toString());
// }

// bool esMultiple(int num1, int num2) {
//   return num1 % num2 == 0;
// }

//

// void main() {
//   int menu = 0;
//   List<String> alumnos = [];

//   List<String> cursos = [];
//   List<List<double>> notas = [[]];

//   String alumno = "";
//   String curso = "";
//   double nota = 0;
//   while (menu >= 0) {
//     print('digite la opcion ');

//     print('1. crear curso');
//     print('2. crear alumno');
//     print('3. Agregar notas');
//     print('4. listar alumnos por cursos ');
//     print('5. mostrar notas de curso ');
//     print('6. mostrar notas del curso y alumno  ');
//     print('7. salir ');

//     menu = read_int();

//     if (menu == 1) {
//       print('digite el nombre del curso');
//       curso = read_string();
//       cursos.add(curso);
//       print(cursos);
//       increaseMatrixDimensions(notas, alumnos.length, cursos.length);
//       print(notas);
//     }

//     if (menu == 2) {
//       print('digite el nombre del alumno');
//       alumno = read_string();
//       alumnos.add(alumno);
//       print(alumnos);
//       increaseMatrixDimensions(notas, alumnos.length, cursos.length);
//       print(notas);
//     }

//     if (menu == 3) {
//       int indice_alumno =
//           getIndexInArray(alumnos, 'Digite el alumno', 'Digite bien el alumno');

//       int indice_curso =
//           getIndexInArray(cursos, 'Digite el curso', 'Digite bien el curso');

//       do {
//         print('digite  la nota');
//         nota = read_double();
//       } while (nota < 0 || nota > 5);
//       notas[indice_alumno][indice_curso] = nota;
//       print(notas);
//     }

//     if (menu == 4) {
//       int indice_alumno =
//           getIndexInArray(alumnos, 'Digite el alumno', 'Digite bien el alumno');

//       List<double> notas_alumno = notas[indice_alumno];

//       print(notas_alumno);

//       double sum = 0;
//       for (int i = 0; i < notas_alumno.length; i++) {
//         sum = sum + notas_alumno[i];
//       }
//       double prom = sum / notas_alumno.length;

//       print('el promedio de el alumno es ${prom}');
//     }

//     if (menu == 5) {
//       int indice_curso =
//           getIndexInArray(cursos, 'Digite el curso', 'Digite bien el curso');

//       List<double> notas_cursos = [];

//       double sum = 0;

//       for (int i = 0; i <= notas.length; i++) {
//         notas_cursos.add(notas[i][indice_curso]);
//         double note = notas[i][indice_curso];
//         sum = sum + note;
//       }

//       double prom = sum / 2;
//       print('el promedio de la notas de los alumnos es ${prom}');
//       print(notas_cursos);
//     }

//     if (menu == 6) {
//       int indice_alumno =
//           getIndexInArray(alumnos, 'Digite el alumno', 'Digite bien el alumno');
//       int indice_curso =
//           getIndexInArray(cursos, 'Digite el curso', 'Digite bien el curso');

//       double note = notas[indice_alumno][indice_curso];

//       print(note);
//     }

//     if (menu == 7) {
//       break;
//     }
//   }
//   print('no existe  curso');

//   print(alumnos);
//   print(cursos);

//   print(nota);
// }

// int getIndexInArray(List arr, String message, String errorMessage) {
//   int indice = -1;
//   while (indice == -1) {
//     print(message);
//     String input = read_string();
//     for (int i = 0; i < arr.length; i++) {
//       if (input == arr[i]) {
//         indice = i;
//       }
//     }
//     if (indice == -1) {
//       print(errorMessage);
//     }
//   }
//   return indice;
// }

// void increaseMatrixDimensions(List<List<double>> matrix, int rows, int cols) {
//   int currentRows = matrix.length;
//   int currentCols = matrix[0].length;
//   if (rows <= currentRows && cols <= currentCols) return;
//   if (rows > currentRows) {
//     List<double> newRow = [];
//     for (int i = 0; i < cols; i++) {
//       newRow.add(-1);
//     }
//     for (int i = 0; i < rows - currentRows; i++) {
//       matrix.add(newRow);
//     }
//   }
//   if (cols > currentCols) {
//     for (int i = 0; i < rows; i++) {
//       List<double> row = matrix[i];
//       for (int j = 0; j < cols - currentCols; j++) {
//         row.add(-1);
//       }
//     }
//   }
// }

//OBJETOS//
// void main() {
//   School school = School();
//   Console c = Console(school);
//   int menu = 0;

//   while (menu >= 0) {
//     c.showMenu();
//     menu = c.read_int();

//     if (menu == 1) {
//       print('digite el nombre del curso');
//       String name = c.read_string();
//       print('digite el limie del curso');
//       int limit = c.read_int();
//       Curso curso = Curso(name, limit);
//       school.cursos.add(curso);
//     }

//     if (menu == 2) {
//       print('digite el nombre del alumno');
//       String name = c.read_string();
//       print('digite la edad del alumno');
//       int age = c.read_int();
//       Alumno alumno = Alumno(name, age);
//       school.alumnos.add(alumno);
//     }

//     if (menu == 3) {
//       Alumno alumno = c.findAlumno();
//       Curso curso = c.findCurso();
//       double value = c.read_double();
//       Nota nota = Nota(value: value, curso: curso, alumno: alumno);
//       school.notas.add(nota);
//     }

//     if (menu == 4) {
//       Alumno alumno = c.findAlumno();
//       List<Nota> notas_alumno = school.getNotasByAlumno(alumno);
//       print(notas_alumno.map((nota) => nota.value));
//       double average = school.getAverage(notas_alumno);
//       print(average);
//     }

//     if (menu == 5) {
//       Curso curso = c.findCurso();

//       List<Nota> notas =
//           school.notas.where((nota) => curso.name == nota.curso.name).toList();
//       print(notas.map((nota) => nota.value));
//       double average = school.getAverage(notas);
//       print(average);
//     }

//     if (menu == 6) {
//       Alumno alumno = c.findAlumno();
//       Curso curso = c.findCurso();

//       Nota nota = school.notas.firstWhere((nota) =>
//           nota.alumno.name == alumno.name && nota.curso.name == curso.name);

//       print(nota.value);
//     }

//     if (menu == 7) {
//       break;
//     }
//   }
// }

// // class Console {
//   School school;

// //   Console(this.school);

//   void showMenu() {
//     print('digite la opcion ');
//     print('1. crear curso');
//     print('2. crear alumno');
//     print('3. Agregar notas');
//     print('4. listar alumnos por cursos ');
//     print('5. mostrar notas de curso ');
//     print('6. mostrar notas del curso y alumno  ');
//     print('7. salir ');
//   }

//   int read_int() {
//     return int.parse(stdin.readLineSync().toString());
//   }

//   String read_string() {
//     return stdin.readLineSync().toString();
//   }

//   double read_double() {
//     return double.parse(stdin.readLineSync().toString());
//   }

//   Alumno findAlumno() {
//     Alumno? alumno;
//     do {
//       String name_alumno = read_string();
//       alumno = school.getAlumnoByName(name_alumno);
//       if (alumno != null) {
//         return alumno;
//       }
//     } while (alumno == null);
//     return alumno;
//   }

//   Curso findCurso() {
//     Curso? curso;
//     do {
//       String name_curso = read_string();
//       curso = school.getCursoByName(name_curso);
//       if (curso != null) {
//         return curso;
//       }
//     } while (curso == null);
//     return curso;
//   }
// }

// class School {
//   List<Curso> cursos = [];
//   List<Alumno> alumnos = [];
//   List<Nota> notas = [];

//   Alumno? getAlumnoByName(String name) {
//     return alumnos.firstWhere((alumno) => alumno.name == name);
//   }

//   Curso? getCursoByName(String name) {
//     return cursos.firstWhere((curso) => curso.name == name);
//   }

//   List<Nota> getNotasByAlumno(Alumno alumno) {
//     return notas.where((nota) => nota.alumno.name == alumno.name).toList();
//   }

//   double getAverage(List<Nota> notas) {
//     return notas.fold(0.0, (sum, nota) => nota.value + sum) / notas.length;
//   }
// }

// class Curso {
//   String name;
//   int limit;

//   Curso(String this.name, int this.limit);
// }

// class Alumno {
//   String name;
//   int age;

//   Alumno(String this.name, int this.age);
// }

// class Nota {
//   Curso curso;
//   Alumno alumno;
//   double value;

//   Nota(
//       {required Curso this.curso,
//       required Alumno this.alumno,
//       required double this.value});
// }

void main() {
  int? option;
  AccountTracker tracker = AccountTracker();
  Console c = Console(tracker);

  while (option != 0) {
    option = c.askOption();

    if (option == 1) c.askAccount();
    if (option == 2) c.showAccounts();
    if (option == 3) c.askTransaction();
  }
}

class Console {
  AccountTracker tracker;

  Console(this.tracker);

  int askOption() {
    print('---Menu---');
    print('0. salir ');
    print('1. crear cuenta');
    print('2. mostrar cuentas');
    print('3. crear movimiento');
    int option = read_int();
    print('');
    return option;
  }

  int read_int() {
    return int.parse(stdin.readLineSync().toString());
  }

  String read_string() {
    return stdin.readLineSync().toString();
  }

  double read_double() {
    return double.parse(stdin.readLineSync().toString());
  }

  bool read_bool() {
    return stdin.readLineSync().toString() == "1";
  }

  askAccount() {
    print('como se llamara su cuenta?');

    String name = read_string();

    while (name == '') {
      print('porfavor coloque un nombre a la cuenta ');
      name = read_string();
    }

    print('digite el saldo inicial de la cuenta ');

    double balance = read_double();

    while (balance < 0) {
      print('porfavor digite saldo mayor a cero ');
      balance = read_double();
    }

    print('su cuenta es virtual ?   Marque 1. si lo es. ');
    bool virtual = read_bool();
    if (virtual == true) {
      print('su cuenta es digital');
    }

    if (virtual == false) {
      print('su cuenta es fisica');
    }

    Account account = Account.create(name, virtual, balance);
    tracker.accounts.add(account);
  }

  showAccounts() {
    showItems(tracker.accounts);
    if (tracker.accounts.length <= 0) {
      print('Aun no hay cuentas');
    }
  }

  askTransaction() {
    List<Account> physical = tracker.whereVirtual(false);

    if (physical.length <= 0) {
      print(
          'No hay ninguna cuenta fisica debe crear almenos una para poder crear movimientos');
      return;
    }

    bool repeatAccountPhysic = true;
    List<TransactionDetail> details = [];
    Set<int> chossenAccounts = {};

    print('');
    print('---Cuentas Fisicas---');
    while (repeatAccountPhysic) {
      print('digite la descripcion ');
      String description = read_string();
      Account accountSelected = selectAccount(
          'seleccione una cuenta fisica', physical, chossenAccounts, false);
      print(
          'La transaccion es un ingreso o un gasto?    ingreso (1)     gasto (2)');
      bool income = read_bool();
      bool invalidValue = true;
      double value;
      do {
        print('digite el valor ');
        value = read_double();
        if (income) {
          invalidValue = false;
        } else {
          invalidValue = value > accountSelected.balance;
        }
        if (invalidValue) {
          print('Error: este valor supera el saldo de la cuenta');
        }
      } while (invalidValue);

      TransactionDetail detail = TransactionDetail(accountSelected, value);

      details.add(detail);
      if (physical.length <= 0) {
        repeatAccountPhysic = false;
      } else {
        print(
            'desea seleccionar otra cuenta fisica ?     digite 1. SI     2. NO');
        repeatAccountPhysic = read_bool();
      }
    }

    bool repeatAccountvirtual = true;
    print('');
    print('---Cuentas Virtuales---');

    while (repeatAccountvirtual) {
      print('digite la descripcion');
      String description = read_string();
      List<Account> virtual = tracker.whereVirtual(true);
      Account accountSelected = selectAccount(
          'seleccione una cuenta virtual', virtual, chossenAccounts, true);

      bool confirmed = false;
      while (!confirmed) {
        print(
            'La transaccion es un ingreso o un gasto?    ingreso (1)     gasto (2)');
        bool income = read_bool();

        bool invalidValue = true;
        double value;
        do {
          print('digite el valor ');
          value = read_double();
          if (income) {
            invalidValue = false;
          } else {
            invalidValue = value > accountSelected.balance;
          }
        } while (invalidValue);

        List<TransactionDetail> detailVirtual =
            details.where((detail) => detail.account.virtual).toList();

        List<TransactionDetail> detailReal =
            details.where((detail) => !detail.account.virtual).toList();
        double sumvirtual = sum(detailVirtual);
        double sumreal = sum(detailReal) + value;

        if (sumvirtual > sumreal) {
          print(
              'las cuentas virtuales no puede ser mayor que las fisicas. porfavor digitar el valor nuevamente');
        } else {
          confirmed = true;
        }

        TransactionDetail detail = TransactionDetail(accountSelected, value);
        details.add(detail);
      }
      if (virtual.length <= 0) {
        repeatAccountvirtual = false;
      } else {
        print(
            'deseas seleccionar otra cuenta virtual?.  digite 1. SI     2. NO');
        repeatAccountvirtual = read_bool();
      }
    }
  }

  Account selectAccount(String message, List<Account> accounts,
      Set<int> chossenAccounts, bool virtual) {
    Account? accountSelected;

    do {
      print(message);
      showItems(accounts);
      print('digite la cuenta a selecionar');
      int id = read_int();
      bool added = chossenAccounts.contains(id);
      if (added) {
        print('Ya esta cuenta esta seleccionada');
      } else {
        accountSelected = tracker.firstWhereId(id);
        if (accountSelected == null) {
          print('Esta cuenta no existe');
        } else if (accountSelected.virtual != virtual) {
          if (accountSelected.virtual) {
            print('esta cuenta es virual');
          } else {
            print('esta cuenta es fisica');
          }
        } else {
          chossenAccounts.add(id);
          accounts.removeWhere((account) => account.id == id);
        }
      }
    } while (accountSelected == null || accountSelected.virtual != virtual);
    return accountSelected;
  }

  showItems(List items) {
    for (int i = 0; i < items.length; i++) {
      print(items[i]);
    }
  }
}

class AccountTracker {
  List<Account> accounts = [
    Account.create('bancolombia', false, 1000),
    Account.create('vacaciones', true, 500),
  ];

  List<Account> whereVirtual(bool virtual) {
    return accounts.where((account) => account.virtual == virtual).toList();
  }

  Account? firstWhereId(int id) {
    try {
      return accounts.firstWhere((account) => account.id == id);
    } catch (e) {
      return null;
    }
  }
}

class Account {
  static int nextId = 0;
  static int getNextId() {
    nextId += 1;
    return nextId;
  }

  static Account create(String name, bool virtual, double balance) {
    int id = getNextId();
    Account account = Account(id, name, virtual, balance);
    return account;
  }

  int id;
  String name;
  bool virtual;
  double balance;

  Account(
      int this.id, String this.name, bool this.virtual, double this.balance);

  String toString() {
    return '${id} - ${name} - ${virtual} - ${balance}';
  }
}

class Transaction {
  String description;
  DateTime dateTime;
  bool income;
  List<TransactionDetail> details = [];

  Transaction(
      String this.description, DateTime this.dateTime, bool this.income);
}

class TransactionDetail {
  Account account;
  double value;

  TransactionDetail(Account this.account, double this.value);
}

double sum(List<TransactionDetail> details) {
  double sum = 0;
  for (int i = 0; i < details.length; i++) {
    sum = sum + details[i].value;
  }
  return sum;
}

createAccount(Console) {}
