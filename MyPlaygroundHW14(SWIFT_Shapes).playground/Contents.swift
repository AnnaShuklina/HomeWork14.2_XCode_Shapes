//14.2 Домашка Swift
//Опишите классы конкретных фигур (Rectangle, Circle, Square), у каждого класса должен быть свой уникальный инициализатор и приватная переменная, чтобы хранить значения из инициализатора. Например, для класса Circle инициализатор должен принимать аргумент радиуса с типом Double, тогда и приватная переменная будет радиус с типом Double. Выполните то же самое для Rectangle, но с аргументами высоты и ширины, а для Square определите одну сторону.
//Классы Rectangle, Circle, Square нужно наследовать от базового класса Shape.

open class Shape {
    open func calculateArea() -> Double {
        fatalError("not implemented")
    }
    
    open func calculatePerimeter() -> Double {
        fatalError("not implemented")
    }
}

//Внутри классов Rectangle, Circle, Square переопределите методы calculateArea() и calculatePerimeter().

class Circle: Shape {
    private let radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    override func calculateArea() -> Double {
        return Double.pi * radius * radius
    }
    
    override func calculatePerimeter() -> Double {
        return 2 * Double.pi * radius
    }
}

class Rectangle: Shape {
    private let width: Double
    private let height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    override func calculateArea() -> Double {
        return width * height
    }
    
    override func calculatePerimeter() -> Double {
        return 2 * width + 2 * height
    }
}

class Square: Shape {
    private let side: Double
    
    init(side: Double) {
        self.side = side
    }
    
    override func calculateArea() -> Double {
        return side * side
    }
    
    override func calculatePerimeter() -> Double {
        return 4 * side
    }
}

// Реализуйте экземпляр любой из фигур, вычислите при помощи ее методов ее периметр и площадь.
let circle = Circle(radius: 5)
print("Площадь круга равна: ", circle.calculateArea())
print("Периметр круга равен: ", circle.calculatePerimeter())

let square = Square(side: 15)
print("Площадь квадрата равна: ", square.calculateArea())
print("Периметр квадрата равен: ", square.calculatePerimeter())

let rectangle = Rectangle(width : 10, height : 20)
print("Площадь прямоугольника равна: ", rectangle.calculateArea())
print("Периметр прямоугольника равен: ", rectangle.calculatePerimeter())

//создайте массив shapes: [Shape] и проинициализируйте разными типами фигур (пусть будет каждой по одной), также создайте счетчики для суммарной площади и суммарного периметра.

let shapes: [Shape] = [Circle(radius: 5), Rectangle(width: 10, height: 20), Square(side: 15)]
var totalArea = 0.0
var totalPerimeter = 0.0

//Пройдитесь в цикле по фигурам из массива shapes и сделайте подсчет суммарной площади и периметра фигур
for shape in shapes {
    totalArea += shape.calculateArea()
    totalPerimeter += shape.calculatePerimeter()
}
//Вывести в консоль наши счетчики площади и периметра.
print("Суммарная площадь равна: ", totalArea)
print("Суммарный периметр равен: ", totalPerimeter)
