////
////  main.swift
////  Home work 6
////
////  Created by Айбек Шакиров on 2/10/22.
////
//
//import Foundation
//
/////№1. Составить программу, которая будет добавлять товары в базу данных товаров магазина. Учесть, что у некоторых товаров может не быть некоторых параметров
////
////Параметры:
////Название
////Производитель
////Вес
////Штрих-код
////Цена
////Скидка (если есть - указываете, если нет - nil)
////Наличие (если есть - указываете, если нет - nil)
////В конце вывести общее количество товаров (какого вида сколько товаров) и общую стоимость товаров магазина
////
////№2. Составить программу, которая будет сохранять имя пользователя, пароль и секретное слово(может быть, а может быть не указано)
////В конце проверить, если человек использует одинаковые пароли - написать “Пароли на Mail.Ru и Facebook похожи. Рекомендуем изменить пароль”(например)
////
////
//
////Nomer 1
//
//func magazine(a:String){
//
//    print("proizvoditelnost")
//    print("vvedite roduct")
//    let Name = readLine()!
//    print("VVedieImya")
//    let Proizvoditel = readLine()!
//    print("vvedite proizvoditela")
//    let Ves = readLine()!
//    print("Vedite Ves")
//    let Shtirhcod = readLine()!
//    print("vedite shtrih cod")
//    let Cena = readLine()!
//    print("vedite ceny")
//    let Sdkidka = readLine()!
//    print("vidite skidky")
//    let nalychie = readLine()!
//    print("vvedite nalychie")
//    let KolychestvoandStoimost = readLine()!
//    print("vvedite kolychestvo i stoimost")
//
//
//}
//let total:Float = 0
//
//
import Foundation
var totalBag : [[String?]] = [[String?]]()
var arrmass : [String?] = []
var cost = 0
var quantity = 0
//
func bazaTovarov(answer: String){
    if answer == "yes"{
        print("vvedite name tovara:")
        let nazvanie = readLine()
        print("vedite proizvoditelya:")
        let proizvoditel = readLine()
        print("Vedite ves tovara:")
        let ves = readLine()
        print("vedite shtih cod tovara:")
        let shtrihcode = readLine()
        print("vvedite ceny tovara :")
        var cena:String? = readLine()
        print("vedite skidky tovara:")
        let skidka:String? = readLine()
        print("vedite nalychie tovara:")
        let nalichie:String? = readLine()
        
        if skidka != nil{
            let b = (Int(cena ?? " ") ?? 0)!  * (Int(skidka ?? " ") ?? 0)! / 100
            cena = "\((Int(cena ?? " ") ?? 0)! - b)"
        }
        //
        
        cost += Int(cena ?? " ") ?? 0
        arrmass.append(nazvanie);
        arrmass.append(proizvoditel);
        arrmass.append(ves);
        arrmass.append(shtrihcode);
        arrmass.append(cena);
        arrmass.append(skidka);
        arrmass.append(nalichie)
        //
        if nalichie == ""{
            quantity+=0
        }else{
            quantity+=1
        }
        //
        for i in 0..<arrmass.count{
            if arrmass[i] == ""{
                arrmass[i] = nil
            }}
        //
        
        print(arrmass)
        totalBag.append(arrmass)
        arrmass = []

        }
  }
bazaTovarov(answer: "yes")
print("hotite prodoljit? (yes/no)")
var answerr = readLine()!

if answerr == "yes"{
    repeat{
        bazaTovarov(answer: "yes")
        print("hotite prodoljit?")
        answerr = readLine()!
    }while answerr != "no"
}
if answerr == "no"{
    print("vse tovary:\(totalBag)")
    print("itogovaya cymma: \(cost)")
    print("vsego prodycktov : \(quantity)")
}

//2.
let socialmedia = ["Facebook","Instagram","Twitter"]
var usernames : [String] = []
var passwords : [String] = []
var codewords : [String?] = []
print("gotovy sodta akaynti?")
let answer = readLine()!
if answer == "yes"{
    addAccounts(answer: "yes")
}else{
    print("error")
}
func addAccounts(answer: String){
    for i in socialmedia{
        print("sozdaite akkaynt na \(i)")
        print("vedyte login")
        let username = readLine()!
        print("vedite parol")
        let password = readLine()!
        print("vedyte codovoe slovo")
        var codeWord : String? = readLine() ?? " "
        if codeWord == ""{
            codeWord = nil
        }
        usernames.append(username)
        passwords.append(password)
        codewords.append(codeWord)
    }
    print(usernames)
    print(passwords)
    print(codewords)
    
    if passwords[0] == passwords[1] && passwords[0] == passwords[2] {
        print("poroly na \(socialmedia[0]),\(socialmedia[1]),\(socialmedia[2]) pohoji. recomendyem izmenit parol")
    }else if passwords[0] == passwords[1]{
        print("poroly na \(socialmedia[0]),\(socialmedia[1]) pohoji. recomendyem izmenit parol")
    }else if passwords[1] == passwords[2]{
        print("poroly na \(socialmedia[1]),\(socialmedia[2]) pohoji. recomendyem izmenit parol")
    }else if passwords[0] == passwords[2]{
        print("poroly na \(socialmedia[0]),\(socialmedia[2]) pohoji. recomendyem izmenit parol")
    }
}
