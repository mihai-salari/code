//: Playground - noun: a place where people can play

import UIKit

enum FamilyTree {
    case noKnownParents
    indirect case oneKnownParent(name: String, ancestors: FamilyTree)
    indirect case twoKnownParents(fatherName: String, fatherAncestor: FamilyTree, motherName: String, motherAncestor: FamilyTree)
}

let fredFamilyTree = FamilyTree.twoKnownParents(fatherName: "Foo", fatherAncestor: .noKnownParents, motherName: "Bra", motherAncestor: .twoKnownParents(fatherName: "Baba", fatherAncestor: .noKnownParents, motherName: "Mama", motherAncestor: .noKnownParents))

print(fredFamilyTree)
