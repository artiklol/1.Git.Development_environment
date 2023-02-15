<div id="badges">
  <a href="your-linkedin-URL">
    <img src="https://drive.google.com/uc?export=download&confirm=no_antivirus&id=19mK-xgPClsbYXo0caQu4ON8wtDD8aYLN" alt="LinkedIn Badge"/>
  </a>
  <a href="your-youtube-URL">
    <img src="https://drive.google.com/uc?export=download&confirm=no_antivirus&id=19mK-xgPClsbYXo0caQu4ON8wtDD8aYLN" alt="Youtube Badge"/>
  </a>
</div>

1. Завести AppleId: https://developer.apple.com/
2. Установка и настройка Xcode
Установите Xcode из AppStore или через https://developer.apple.com/download/
Добавьте аккаунт в настройках Xcode
3. Завести аккаунт (если нет) на BitBucket (https://bitbucket.org) и создать репозиторий для первого проекта
4. Создать новый проект для iOS в Xcode
Interface: Sotoryboard
Organization Identifier: clevertec.фамилия. Ex.: clevertec.sidorchenko
Подготовить проект для вёрстки интерфейса без storyboard: medium / google search: xcode remove storyboard
5. Работа с Git:
Проинициализировать git
Выкачать и добавить файл .gitignore
Закомитить изменения с сообщением “Initial project setup”
Запушить изменения на удалённый репозиторий в ветку master
Рекомендуем настроить доступ к репозиторию с помощью ssh Для работы с git можно воспользоваться любым удобным gui клиентом. Например, SourceTree

6. Скачать с https://material.io/resources/icons/ любую иконку в формате png для iOS (скачается архив с набором иконок), добавить в проект
7. В приложении создать экран (UIViewController), который содержит следующие UI компоненты:
Логотип (иконка из предыдущего пункта);
Текст приветствия;
UIPicker выбора языка приложения (Английский, Белорусский, Русский);
Три кнопки: светлая тема, тёмная тема и авто.
Требование к приложению:

Не использовать storyboard и xib. Вся вёрстка происходит программно
Реализовать локализацию приложения (Английский, Белорусский, Русский)
Поддержать смену темы в приложении (светлая / темная / авто)
Кнопки должны менять свой внешний вид в зависимости от состояния (touchUpInside)
Логика работы

При нажатии на UIPicker пользователю предлагается выбрать язык приложения. Изменение происходит автоматически без перезапуска приложения: меняется текст приветствия. Тема приложения переключается с помощью кнопок (авто - соответствует текущей теме системе).

8. Выполненное задание запушить в bitbucket. Во время выполнения комитить изменения с понятными сообщениями: ADDED button, SUPPORTED localization, FINISHED task