|FR id|TC id|Опис кроків тестового сценарію|Опис очікуваних результатів|
|:-:|:-:|:-|:-:|
|FR1.3|TC1.1|Початкові умови: відсутні <br> Кроки сценарію: <br> 1) message_text = "текст" <br> 2) receiver_id = 0|Результат = 1|
|FR1.3|TC1.2|Початкові умови: відсутнє з'єднання до інтернету <br> Кроки сценарію: <br> 1) message_text = "текст" <br> 2) receiver_id = 0|Результат = -1|
|FR1.3|TC1.3|Початкові умови: відсутні <br> Кроки сценарію: <br> 1) message_text = "текст...(більше 250 символів)" <br> 2) receiver_id = 0|Результат = -1|
|FR1.3|TC1.4|Початкові умови: відсутні <br> Кроки сценарію: <br> 1) message_text = "текст" <br> 2) receiver_id != 0|Результат = -1|
