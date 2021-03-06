//
//  Students.swift
//  Lab2
//
//  Created by Яна Страшок on 13.04.2022.
//

import Foundation

struct StudentList {
    private(set) var students: Array<Student>
    
    private(set) var numberOfStudents: Int
    
    init() {
        students = Array<Student>()
        numberOfStudents = 0
    }
    
    mutating func addStudent(_ additional: Student){
        students.append(additional)
        numberOfStudents += 1
    }
    
    mutating func target(){
        students.removeAll(where: { student in
            for grade in student.grades{
                if (grade != 5){
                    return true
                }
            }
            return false
        })
    }
    
    struct Student: Identifiable {
        var id = UUID()
        var name: String
        var birthDate: Date
        var enrolmentDate: Date
        var grades: Array <Int>
        
    }
}


