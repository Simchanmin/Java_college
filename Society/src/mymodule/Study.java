package mymodule; // 'mymodule'이라는 패키지 선언

// Person 클래스를 정의합니다.
class Person {
    String name; // 사람의 이름을 저장하는 변수
    int age; // 사람의 나이를 저장하는 변수

    // Person 클래스의 생성자: 객체를 초기화합니다.
    Person(String name, int age) {
        this.name = name; // 전달된 이름을 name 변수에 할당
        this.age = age; // 전달된 나이를 age 변수에 할당
    }

    // 객체의 정보를 출력하는 메서드
    void displayInfo() {
        System.out.println("이름: " + name + ", 나이: " + age); // 이름과 나이를 출력
    }
}

// 프로그램 실행의 시작점인 Study 클래스
public class Study {
    public static void main(String[] args) {
        
        // Person 객체 배열 선언 및 생성
        Person[] people = new Person[3]; // 3개의 Person 객체를 담을 배열 생성
        people[0] = new Person("찬민", 30); // 첫 번째 객체 생성 및 할당
        people[1] = new Person("지민", 25); // 두 번째 객체 생성 및 할당
        people[2] = new Person("유민", 35); // 세 번째 객체 생성 및 할당

        // 배열에 저장된 각 객체의 정보를 출력
        for (Person person : people) { // for-each 루프를 사용
            person.displayInfo(); // displayInfo() 메서드 호출
        }
    }
}