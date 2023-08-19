-- Вставка даних у таблицю користувачів
INSERT INTO users (username, role, created_at) VALUES
  ('john_doe', 'адміністратор', '2023-08-19 10:00:00'),
  ('jane_smith', 'користувач', '2023-08-19 11:30:00'),
  ('bob_jones', 'користувач', '2023-08-19 12:15:00');

-- Вставка даних у таблицю господарів
INSERT INTO hosts (user_id, num_reviews, verified_identity, superhost, languages, response_rate, response_time) VALUES
  (1, 10, true, true, ARRAY['Англійська', 'Французька'], 95.5, 'Протягом кількох годин'),
  (2, 5, false, false, ARRAY['Іспанська'], 80.0, 'Протягом дня'),
  (3, 15, true, true, ARRAY['Німецька', 'Італійська'], 100.0, 'Протягом години');

-- Вставка даних у таблицю гостей
INSERT INTO guests (user_id, can_pay_for_reservation, can_review_host) VALUES
  (1, true, true),
  (2, false, true),
  (3, true, false);

-- Вставка даних у таблицю кімнат
INSERT INTO rooms (host_id, room_name, room_description, max_residents, price_per_night, has_wifi, has_free_parking, has_waterfront, has_tv_with_cable, has_hair_dryer, rating, common_spaces) VALUES
  (1, 'Затишна хатинка', 'Чарівна хатинка біля озера', 4, 150.0, true, true, true, true, true, 4.7, ARRAY['Вітальня', 'Кухня']),
  (1, 'Відпочинок з видом на озеро', 'Просторий відпочинок з захоплюючим краєвидом на озеро', 6, 250.0, true, true, true, true, true, 4.9, ARRAY['Вітальня', 'Їдальня']),
  (2, 'Міська квартира', 'Сучасна квартира в самому центрі міста', 2, 100.0, true, false, false, true, true, 4.5, ARRAY['Вітальня', 'Балкон']);

-- Вставка даних у таблицю бронювань
INSERT INTO reservations (guest_id, room_id, check_in_date, check_out_date, total_price, reservation_status, payment_status) VALUES
  (1, 1, '2023-09-01', '2023-09-05', 600.0, 'Підтверджено', 'Завершено'),
  (2, 3, '2023-10-10', '2023-10-15', 500.0, 'Підтверджено', 'В очікуванні'),
  (3, 2, '2023-09-20', '2023-09-25', 1250.0, 'Підтверджено', 'Завершено');

-- Вставка даних у таблицю відгуків
INSERT INTO reviews (guest_id, room_id, cleanliness_rating, accuracy_rating, communication_rating, location_rating, checkin_rating, value_rating, total_rating, review_text, review_date) VALUES
  (1, 1, 5, 5, 5, 5, 5, 5, 5.0, 'Чудовий відпочинок у затишній хатинці!', '2023-09-06'),
  (2, 3, 4, 4, 4, 5, 4, 4, 4.2, 'Гарна квартира, чудове розташування.', '2023-10-16'),
  (3, 2, 5, 5, 5, 5, 5, 5, 5.0, 'Абсолютно полюбили відпочинок з видом на озеро!', '2023-09-26');
