//
//  MainProfile.swift
//  loginApp
//
//  Created by Anton Duplin on 18/7/21.
//

struct MainProfile{
    let userInfo: UserInfo
    let personalInfo: PersonalInfo
    
    static func getMyProfile() -> MainProfile {
        MainProfile(
            userInfo: UserInfo(username: "anton",
                               password: "duplin"
                               
            ),
            personalInfo: PersonalInfo(name: "Антон",
                                       surname: "Дуплин",
                                       mybirthday: "25.12.1990",
                                       status: "Не женат",
                                       placeOfBirth: "Самара",
                                       placeOfResidence: "Афины",
                                       myHobby: ["Музыка","Сноуборд","Плавание","Кампинг","Видео Игры:)"],
                                       workPosition: "Туризм,Гостиничный бизнес")
        )
    }
    
}
