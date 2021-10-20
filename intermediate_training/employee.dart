class Employee{
  String name = 'John';
  String position = 'Sales';

  Employee(String name, String position){
    this.name = name;
    this.position = position;  
  }

  String getName() => name;
  String getPosition() => position;

  String getFullData() => name+' '+position;
}

void main(List <String> args) {
  Employee yamil = new Employee('Yamil', 'Encargado de Almacen');

  print('${yamil.getName()} is ${yamil.getName()} (${yamil.getFullData()})');
}