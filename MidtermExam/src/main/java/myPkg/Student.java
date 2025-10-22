package myPkg;

import java.io.Serializable;

public class Student implements Serializable {
    private String name;
    private int score;

    public Student() {}

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public int getScore() { return score; }
    public void setScore(int score) { this.score = score; }
}