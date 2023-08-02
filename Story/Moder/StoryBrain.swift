//
//  StoryBrain.swift
//  Story
//
//  Created by Артур  Арсланов on 02.08.2023.
//

import Foundation

struct StoryBrain {
    let stories = [
        Story(
            title: "У вашей машины лопнула шина на извилистой дороге у черта на куличках, где нет связи по сотовому телефону. Вы решаете путешествовать автостопом. Рядом с вами с грохотом останавливается ржавый пикап. Мужчина в широкополой шляпе с бездушными глазами открывает тебе пассажирскую дверь и спрашивает: 'Подвезти, парень?'",
            choice1: "- Я запрыгну внутрь. Спасибо за помощь!", choice1Destination: 2,
            choice2: "- Лучше сначала спроси его, убийца ли он.", choice2Destination: 1
        ),
        Story(
            title: "Он медленно кивает, ничуть не смущенный вопросом.",
            choice1: "По крайней мере, он честен. Я заберусь внутрь.", choice1Destination: 2,
            choice2: "По крайней мере, он честен. Я заберусь внутрь.", choice2Destination: 3
        ),
        Story(
            title: "Когда вы садитесь за руль, незнакомец начинает рассказывать о своих отношениях с матерью. С каждой минутой он становится все злее и злее. Он просит вас открыть бардачок. Внутри вы находите окровавленный нож, два отрубленных пальца и кассету с записью Элтона Джона. Он тянется к бардачку.",
            choice1: "Я люблю Элтона Джона! Передай ему кассету.", choice1Destination: 5,
            choice2: "Или он, или я! Ты берешь нож и закалываешь его.", choice2Destination: 4
        ),
        Story(
            title: "Что? Такой отмазка! Знаете ли вы, что дорожно-транспортные происшествия являются второй по значимости причиной смерти от несчастных случаев в большинстве взрослых возрастных групп?",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "Когда вы пробиваете ограждение и несетесь к зазубренным скалам внизу, вы размышляете о сомнительной мудрости ударить кого-то ножом, пока он ведет машину, в которой вы находитесь",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "Ты сближаешься с убийцей, напевая куплеты из 'Можешь ли ты почувствовать любовь сегодня вечером'. Он высаживает вас в следующем городе. Прежде чем вы уйдете, он спросит вас, знаете ли вы какие-нибудь хорошие места для захоронения тел. Вы отвечаете: 'Попробуйте на пирсе'.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
    ]
    
    
    var storyNumber = 0
    
    func getTitle() -> String {
        stories[storyNumber].title
    }
    func getChoice1() -> String {
        stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        stories[storyNumber].choice2
    }
    
    mutating func nextStory(_ userChoice: String){
        let story = stories[storyNumber]
        if userChoice == story.choice1 {
            storyNumber = story.choice1Destination
        }else {
            storyNumber = story.choice2Destination
        }
    }
    
}
