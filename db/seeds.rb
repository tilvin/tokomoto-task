User.create(email: 'user@email.ru', password: 'qweqwe', owner: true)
posts = [
  ['Барселона','Барселона расположена на северо-востоке Иберийского полуострова на побережье Средиземного моря на плато
    шириной в 5 км, границы которого с юга составляют горная гряда Кольсерола (кат. Collserola) и река Льобрегат,
    а на севере — река Бесос. Пиренеи находятся приблизительно в 120 км к северу от города. Прибрежные горы Кольсерола
    создают слегка скруглённые границы города. Самая высокая точка — гора Тибидабо. Её высота составляет 512 м,
    над ней возвышается заметная издалека башня-антенна Кольсерола высотой 288,4 м. Самой высокой точкой в черте города
    является холм Мант Табер (кат. Mont Taber) высотой 12 м, на нём расположен Барселонский собор.', File.open('app/assets/images/barcelona.jpg')],
  ['Прага', 'Прага город и столица Чешской Республики, административный центр Среднечешского края и двух его районов:
    Прага-Восток и Прага-Запад. Образует самостоятельную административно-территориальную единицу страны. Население: 1,2
    млн человек (2013 год), четырнадцатый по величине город в Евросоюзе. Расположена на берегах реки Влтавы в сорока
    километрах от её впадения в Лабу.', File.open('app/assets/images/prg.jpg')],
  ['Афины', 'Афины были крупным и могущественным городом, одной из колыбелей греческой культуры. Во времена золотого века
    Греции (около 500 года до н. э. до 300 до н. э.) город стал важным культурным центром. После золотого века Афины не
    утратили своего значения вплоть до расцвета Римской империи.', File.open('app/assets/images/athens.jpg')]
]
posts.each do |title, text, image|
  Post.create(title: title, text: text, image: image, user: User.first)
end

10.times { |n| Invoice.create(name: "Номер #{ n + 1 }" ) }

