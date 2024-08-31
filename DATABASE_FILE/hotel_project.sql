-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2024 at 06:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'kobedime', 'Admin12345!');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(1, 1, 'Simple Room', 300, 300, NULL, 'tjwebdev', '123', 'ad'),
(2, 2, 'Simple Room', 300, 600, 'a2', 'tjwebdev', '123', 'ad'),
(3, 3, 'Simple Room', 300, 1800, NULL, 'tjwebdev', '123', 'ad'),
(4, 4, 'Supreme deluxe room', 900, 4500, NULL, 'tjwebdev', '123', 'ad'),
(5, 5, 'Supreme deluxe room', 900, 900, NULL, 'tjwebdev', '123', 'ad'),
(6, 6, 'Supreme deluxe room', 900, 7200, '52', 'tjwebdev', '12323432', 'ad2342343'),
(7, 7, 'Supreme deluxe room', 900, 900, NULL, 'tjwebdev', '123', 'ad'),
(8, 8, 'Simple Room', 300, 600, NULL, 'tjwebdev', '123', 'ad'),
(9, 9, 'Luxury Room', 600, 3000, '159A', 'tj webdev', '123', 'ad'),
(10, 10, 'Luxury Room', 600, 1800, '15S', 'tj webdev', '123', 'ad'),
(11, 11, 'Supreme deluxe room', 900, 2700, '1', 'tj webdev', '123', 'ad'),
(12, 12, 'Simple Room', 300, 1200, '2', 'tj webdev', '123', 'ad'),
(13, 13, 'Deluxe Room', 500, 3000, '23', 'tj webdev', '123', 'ad'),
(14, 14, 'Luxury Room', 600, 2400, '44', 'tj webdev', '123', 'ad'),
(15, 15, 'Luxury Room', 600, 1200, NULL, 'tj webdev', '123', 'ad'),
(16, 16, 'Luxury Room', 600, 1200, '1', 'tj webdev', '123', 'ad'),
(17, 17, 'Simple Room', 300, 900, '20A', 'tj webdev', '123', 'ad'),
(18, 18, 'Suites', 300, 1500, NULL, 'kobe dime', '09679218181', 'Philippines'),
(19, 19, 'Royal Serenity Suite', 45000, 45000, NULL, 'kobe', '09679216161', 'Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'pending',
  `order_id` varchar(150) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(100) NOT NULL DEFAULT 'pending',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `rate_review` int(11) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `rate_review`, `datentime`) VALUES
(1, 2, 3, '2022-07-20', '2022-07-21', 0, NULL, 'pending', 'ORD_21055700', NULL, 0, 'pending', NULL, NULL, '2022-07-20 01:50:12'),
(2, 2, 3, '2022-07-20', '2022-07-22', 1, NULL, 'booked', 'ORD_24215693', '20220720111212800110168128204225279', 600, 'TXN_SUCCESS', 'Txn Success', NULL, '2022-07-20 02:14:44'),
(3, 2, 3, '2022-07-20', '2022-07-26', 0, 1, 'cancelled', 'ORD_26312547', '20220720111212800110168165603901976', 1800, 'TXN_SUCCESS', 'Txn Success', NULL, '2022-07-20 02:19:00'),
(4, 2, 6, '2022-07-20', '2022-07-25', 0, NULL, 'payment failed', 'ORD_28394638', '20220720111212800110168372503893816', 4500, 'TXN_FAILURE', 'Your payment has been declined by your bank. Please try again or use a different method to complete the payment.', NULL, '2022-07-20 02:30:52'),
(5, 2, 6, '2022-07-20', '2022-07-21', 0, 1, 'cancelled', 'ORD_22877860', '20220720111212800110168627705312020', 900, 'TXN_SUCCESS', 'Txn Success', NULL, '2022-07-20 02:32:09'),
(6, 2, 6, '2022-07-20', '2022-07-28', 1, NULL, 'booked', 'ORD_28689687', '20220720111212800110168303704048087', 7200, 'TXN_SUCCESS', 'Txn Success', 1, '2022-07-20 02:34:46'),
(7, 2, 6, '2022-07-29', '2022-07-30', 0, NULL, 'pending', 'ORD_24272313', NULL, 0, 'pending', NULL, NULL, '2022-07-29 01:13:42'),
(8, 2, 3, '2022-08-14', '2022-08-16', 0, 1, 'cancelled', 'ORD_22541670', '20220814111212800110168092803967754', 600, 'TXN_SUCCESS', 'Txn Success', NULL, '2022-08-14 01:16:05'),
(9, 2, 5, '2022-08-15', '2022-08-20', 1, NULL, 'booked', 'ORD_25267746', '20220815111212800110168656003990120', 3000, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-15 19:32:05'),
(10, 2, 5, '2022-08-18', '2022-08-21', 1, NULL, 'booked', 'ORD_27668816', '20220815111212800110168905703947446', 1800, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-15 19:32:58'),
(11, 2, 6, '2022-08-20', '2022-08-23', 1, NULL, 'booked', 'ORD_25750549', '20220820111212800110168431303975409', 2700, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-20 00:19:57'),
(12, 2, 3, '2022-08-20', '2022-08-24', 1, NULL, 'booked', 'ORD_2445093', '20220820111212800110168173403969278', 1200, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-20 00:20:23'),
(13, 2, 4, '2022-08-20', '2022-08-26', 1, NULL, 'booked', 'ORD_29233995', '20220820111212800110168584503978338', 3000, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-20 00:20:45'),
(14, 2, 5, '2022-08-20', '2022-08-24', 1, NULL, 'booked', 'ORD_28902800', '20220820111212800110168816503988359', 2400, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-20 00:21:06'),
(15, 2, 5, '2022-08-25', '2022-08-27', 0, 1, 'cancelled', 'ORD_2240367', '20220825111212800110168807304010818', 1200, 'TXN_SUCCESS', 'Txn Success', NULL, '2019-08-21 01:51:28'),
(16, 2, 5, '2022-08-26', '2022-08-28', 1, NULL, 'booked', 'ORD_28784829', '20220825111212800110168627505415606', 1200, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-25 01:52:04'),
(17, 2, 3, '2022-09-08', '2022-09-11', 1, NULL, 'booked', 'ORD_21289330', '20220908111212800110168809204050263', 900, 'TXN_SUCCESS', 'Txn Success', 0, '2022-09-08 01:15:30'),
(18, 5, 3, '2024-08-10', '2024-08-15', 0, NULL, 'pending', 'ORD_58144239', NULL, 0, 'pending', NULL, NULL, '2024-08-10 13:55:10'),
(19, 6, 7, '2024-08-13', '2024-08-14', 0, NULL, 'pending', 'ORD_67534872', NULL, 0, 'pending', NULL, NULL, '2024-08-13 11:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(46, 'IMG_41305.jpg'),
(47, 'IMG_66450.jpg'),
(48, 'IMG_13217.jpg'),
(49, 'IMG_92393.jpg'),
(51, 'IMG_46472.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(100) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, '555 Tandang Sora Ave, Novaliches, Quezon City', 'https://www.google.com/maps/place/The Avenue Residences/@14.6811266,121.0153458,17z/data=!3m1!4b1!4m', 639123456789, 63920456789, 'kobe24.dime@gmail.com', 'https://www.facebook.com/ohitskobe', 'https://www.instagram.com/ohitskobe_/?hl=en', 'https://x.com/kobeatom_', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3859.5558951716544!2d121.01534577468662!3d14.681126575100903!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397b6cedde3bd75:0xd0c9f35055df35da!2sThe Avenue Residences!5e0!3m2!1sen!2sph!4v1723274167717!5m2!1sen!2sph');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(27, 'IMG_23828.svg', 'Spa and Wellness Center', 'Experience ultimate relaxation at our Spa and Wellness Center. Indulge in a variety of therapeutic treatments, from soothing massages to invigorating facials and body scrubs, designed to rejuvenate both body and mind in a tranquil setting.'),
(28, 'IMG_16337.svg', 'Fitness Center', 'Our state-of-the-art fitness center is designed to keep you energized and motivated. With a range of exercise machines, free weights, and personalized workout areas, you can stay on top of your fitness routine, no matter how long you stay.'),
(29, 'IMG_45000.svg', 'Swimming Pool', 'Dive into relaxation at our beautifully designed swimming pool. Whether you prefer a refreshing morning swim or lounging by the poolside with a drink in hand, our pool area offers a serene escape with plush sun loungers and attentive poolside service'),
(30, 'IMG_81081.svg', 'Business Center', 'Our Business Center caters to all your professional needs. Equipped with the latest technology and office services, including high-speed internet, printing, and copying facilities, it&#039;s the perfect environment for business travelers to stay prod'),
(31, 'IMG_53959.svg', 'Restaurant and Dining', 'Savor exceptional dining experiences at our on-site restaurant. Offering a diverse menu of delectable cuisines, from casual bites to gourmet meals, our dining options cater to every taste and occasion, ensuring a memorable culinary journey.'),
(32, 'IMG_19154.svg', 'Conference and Banquet Halls', 'Host your next event in style with our versatile conference and banquet halls. These elegantly designed spaces are equipped with modern audiovisual technology and flexible layouts, perfect for everything from business meetings to grand celebrations.'),
(33, 'IMG_45766.svg', 'On-Site Parking', 'Enjoy the convenience and security of our on-site parking facilities. With options for valet service, accessible parking spots, and secure parking areas, your vehicle is always in good hands while you focus on your stay.'),
(34, 'IMG_31870.svg', 'Laundry Service', 'Keep your wardrobe fresh with our comprehensive laundry services. From self-service washers and dryers to professional cleaning and pressing, we ensure your garments are spotless and ready for your next outing.'),
(35, 'IMG_98148.svg', '24-Hour Reception', 'Our friendly and attentive reception team is available 24/7 to assist with all your needs. Whether it&#039;s checking in, checking out, or answering any queries, we’re here to ensure a seamless and pleasant stay.'),
(36, 'IMG_72138.svg', 'Children’s Play Area', 'Our dedicated Children’s Play Area is designed to keep the little ones entertained and happy. With safe, fun-filled activities and interactive play equipment, it’s the perfect spot for kids to enjoy and make lasting memories while you relax.'),
(37, 'IMG_38458.svg', 'Pet-Friendly Accommodations', 'Bring your furry friends along for the adventure with our pet-friendly accommodations. We provide amenities and services tailored for pets, including comfortable bedding, food and water bowls, and designated play areas to ensure both you and your pet'),
(38, 'IMG_63274.svg', 'In-Room Dining', 'Enjoy gourmet meals in the comfort of your room with our convenient in-room dining service. From a hearty breakfast to a late-night snack, our extensive menu offers delicious options delivered straight to your door.'),
(39, 'IMG_58695.svg', 'Library and Reading Lounge', 'Unwind in our cozy library and reading lounge, where you can escape with a good book or catch up on some leisurely reading. Our well-curated selection of books and comfortable seating provide the perfect retreat for relaxation.'),
(40, 'IMG_12530.svg', 'Garden and Outdoor Spaces', 'Discover tranquility in our beautifully landscaped garden and outdoor spaces. Whether you’re taking a leisurely stroll, enjoying a picnic, or simply relaxing amidst nature, our gardens offer a peaceful haven to complement your stay.'),
(41, 'IMG_51456.svg', 'Cultural and Art Exhibitions', 'Immerse yourself in the local culture and artistry with our rotating cultural and art exhibitions. Our hotel features curated displays of local artwork, historical artifacts, and cultural exhibits, offering guests an enriching experience and a deeper');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(18, 'Mini-bar'),
(19, 'Safe Deposit Box'),
(20, 'Complimentary Toiletries'),
(21, 'Coffee Maker/Kettle'),
(22, 'Iron and Ironing Board'),
(23, 'Work Desk'),
(24, 'Balcony/Terrace'),
(25, 'Bathrobe and Slippers'),
(27, 'High-Quality Bedding'),
(28, 'Smart TV'),
(29, 'Bluetooth Speaker'),
(30, 'Room Service'),
(31, 'Climate Control'),
(32, 'Digital Concierge:'),
(33, 'In-Room Dining Table'),
(34, 'High-Speed Internet'),
(35, 'Personalized Welcome Amenities'),
(36, 'Blackout Curtains'),
(37, 'Eco-Friendly Features'),
(38, 'Adjustable Lighting'),
(39, 'Digital Concierge');

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(1, 'Simple Room', 159, 58, 56, 12, 2, 'Our Standard Rooms offer a comfortable and practical stay with essential amenities. Ideal for travelers seeking a cozy space to rest, these rooms feature modern furnishings and a welcoming atmosphere.', 1, 1),
(2, 'Deluxe Room', 785, 159, 85, 452, 10, 'For a touch of luxury, our Deluxe Rooms provide enhanced comfort and style. Enjoy spacious accommodations, upgraded furnishings, and added amenities for a more refined experience.', 1, 1),
(3, 'Suites', 250, 300, 10, 5, 3, 'Our Suites offer the ultimate in comfort and elegance. Perfect for longer stays or special occasions, these rooms include separate living areas, premium furnishings, and additional amenities to ensure a memorable stay.', 1, 1),
(4, 'Executive Room', 300, 500, 10, 3, 2, 'Designed for business travelers, our Executive Rooms feature a spacious work area, high-speed internet, and business-friendly amenities. Enjoy a productive and relaxing environment tailored to your needs.', 1, 1),
(5, 'Family Room', 600, 600, 2, 8, 6, 'Our Family Rooms are designed with the needs of families in mind. With extra space and multiple bedding options, these rooms offer a convenient and comfortable setting for families traveling together.', 1, 1),
(6, 'Luxury Suites', 500, 900, 12, 9, 10, 'For those seeking an indulgent experience, our Luxury Suites offer unparalleled luxury. With opulent décor, expansive living spaces, and top-tier amenities, these suites provide a premium stay for discerning guests.', 1, 1),
(7, 'Royal Serenity Suite', 120, 45000, 2, 4, 3, 'Indulge in the epitome of luxury with our Royal Serenity Suite, an oasis of elegance and comfort. Spanning 120 square meters, this suite features a spacious balcony with breathtaking views, high-quality bedding, and a personalized welcome to ensure your stay is exceptional. Enjoy top-notch amenities including a smart TV, Bluetooth speaker, and clim', 1, 0),
(8, 'Grand Elegance Suite', 100, 35000, 3, 5, 1, 'Experience refined luxury in the Grand Elegance Suite, featuring expansive living space, a private balcony, and sophisticated amenities. This suite is designed for supreme comfort with high-quality bedding, a smart TV, and a digital concierge, ensuring every need is met with style.', 1, 0),
(9, 'Imperial Luxe Room', 80, 28000, 3, 3, 2, 'The Imperial Luxe Room offers a blend of opulence and comfort with a spacious terrace and city views. Enjoy top-tier amenities including a smart TV, Bluetooth speaker, and high-speed internet. Perfect for those seeking elegance and modern convenience.', 1, 0),
(10, 'Regal Panorama Suite', 140, 55000, 2, 4, 2, 'The Regal Panorama Suite offers unmatched luxury with expansive living areas and a large private terrace. Experience the height of comfort with superior amenities and breathtaking views, ensuring a stay that is both grand and intimate.', 1, 0),
(11, 'Prestige Executive Room', 70, 22000, 2, 2, 1, 'Ideal for business travelers, the Prestige Executive Room combines functionality and luxury with a dedicated work desk, high-speed internet, and a private balcony. Enjoy a comfortable and productive stay with top-notch amenities.', 1, 0),
(12, 'Chic Deluxe Room', 60, 18000, 6, 2, 1, 'The Chic Deluxe Room is a stylish retreat with modern amenities and a city view. Enjoy a cozy and elegant atmosphere with high-quality bedding, a smart TV, and essential features for a comfortable stay.', 1, 0),
(13, 'Luxury Family Suite', 130, 50000, 2, 4, 2, 'The Luxury Family Suite is designed for ultimate comfort with ample space for the whole family. Enjoy a large balcony, high-quality amenities, and a welcoming environment perfect for a memorable family getaway.', 1, 0),
(14, 'Opulent Honeymoon Suite', 90, 30000, 3, 2, 1, 'The Opulent Honeymoon Suite offers a romantic escape with a private terrace and luxurious amenities. Designed for couples seeking a special retreat, this suite features elegant decor and exceptional service for an unforgettable experience.', 1, 0),
(15, 'Executive Penthouse', 150, 70000, 1, 6, 4, 'The Executive Penthouse offers unparalleled luxury with a private rooftop terrace and expansive living areas. Perfect for larger groups or high-profile guests, this suite provides exceptional amenities and breathtaking views.', 1, 0),
(16, 'Sophisticated Studio', 50, 15000, 8, 2, 1, 'The Sophisticated Studio combines elegance with functionality in a compact space. Ideal for solo travelers or couples, this studio features modern amenities, a city view, and a comfortable environment for a refined stay.', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(68, 10, 27),
(69, 10, 28),
(70, 10, 29),
(71, 10, 30),
(72, 10, 31),
(73, 10, 33),
(74, 10, 35),
(75, 10, 38),
(76, 10, 40),
(77, 7, 27),
(78, 7, 28),
(79, 7, 29),
(80, 7, 30),
(81, 7, 31),
(82, 7, 33),
(83, 7, 34),
(84, 7, 35),
(85, 8, 27),
(86, 8, 28),
(87, 8, 29),
(88, 8, 31),
(89, 8, 33),
(90, 8, 35),
(91, 8, 38),
(92, 9, 27),
(93, 9, 28),
(94, 9, 29),
(95, 9, 30),
(96, 9, 31),
(97, 9, 33),
(98, 9, 34),
(99, 11, 27),
(100, 11, 28),
(101, 11, 29),
(102, 11, 30),
(103, 11, 31),
(104, 11, 32),
(105, 11, 33),
(106, 11, 34),
(107, 11, 35),
(108, 11, 36),
(109, 11, 37),
(110, 11, 38),
(111, 12, 27),
(112, 12, 28),
(113, 12, 29),
(114, 12, 30),
(115, 12, 31),
(116, 12, 32),
(117, 12, 33),
(118, 12, 34),
(119, 12, 35),
(120, 12, 36),
(121, 12, 38),
(122, 13, 27),
(123, 13, 28),
(124, 13, 29),
(125, 13, 30),
(126, 13, 31),
(127, 13, 32),
(128, 13, 33),
(129, 13, 37),
(130, 13, 38),
(131, 13, 39),
(132, 13, 40),
(133, 14, 27),
(134, 14, 28),
(135, 14, 29),
(136, 14, 30),
(137, 14, 31),
(138, 14, 32),
(139, 14, 33),
(140, 14, 34),
(141, 14, 35),
(142, 14, 38),
(143, 15, 27),
(144, 15, 28),
(145, 15, 29),
(146, 15, 30),
(147, 15, 31),
(148, 15, 32),
(149, 15, 33),
(150, 15, 34),
(151, 15, 35),
(152, 15, 36),
(153, 15, 37),
(154, 15, 38),
(155, 15, 39),
(156, 16, 27),
(157, 16, 28),
(158, 16, 29),
(159, 16, 33),
(160, 16, 38);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(87, 10, 18),
(88, 10, 19),
(89, 10, 20),
(90, 10, 21),
(91, 10, 22),
(92, 10, 23),
(93, 10, 24),
(94, 10, 25),
(95, 10, 27),
(96, 10, 28),
(97, 10, 29),
(98, 10, 30),
(99, 10, 31),
(100, 10, 32),
(101, 10, 33),
(102, 10, 34),
(103, 10, 35),
(104, 10, 36),
(105, 10, 37),
(106, 10, 38),
(107, 10, 39),
(108, 7, 18),
(109, 7, 19),
(110, 7, 20),
(111, 7, 21),
(112, 7, 22),
(113, 7, 23),
(114, 7, 24),
(115, 7, 25),
(116, 7, 27),
(117, 7, 28),
(118, 7, 29),
(119, 7, 30),
(120, 7, 31),
(121, 7, 32),
(122, 7, 33),
(123, 7, 34),
(124, 7, 35),
(125, 7, 36),
(126, 7, 37),
(127, 7, 38),
(128, 8, 18),
(129, 8, 19),
(130, 8, 20),
(131, 8, 21),
(132, 8, 22),
(133, 8, 23),
(134, 8, 24),
(135, 8, 25),
(136, 8, 27),
(137, 8, 28),
(138, 8, 29),
(139, 8, 30),
(140, 8, 31),
(141, 8, 32),
(142, 8, 33),
(143, 8, 34),
(144, 8, 35),
(145, 8, 36),
(146, 8, 37),
(147, 8, 38),
(148, 9, 18),
(149, 9, 20),
(150, 9, 21),
(151, 9, 22),
(152, 9, 23),
(153, 9, 24),
(154, 9, 25),
(155, 9, 27),
(156, 9, 28),
(157, 9, 30),
(158, 9, 31),
(159, 9, 33),
(160, 9, 34),
(161, 9, 36),
(162, 9, 37),
(163, 9, 38),
(164, 11, 18),
(165, 11, 20),
(166, 11, 21),
(167, 11, 22),
(168, 11, 23),
(169, 11, 25),
(170, 11, 27),
(171, 11, 28),
(172, 11, 29),
(173, 11, 30),
(174, 11, 31),
(175, 11, 33),
(176, 11, 34),
(177, 11, 36),
(178, 11, 38),
(179, 12, 18),
(180, 12, 19),
(181, 12, 20),
(182, 12, 21),
(183, 12, 22),
(184, 12, 23),
(185, 12, 25),
(186, 12, 27),
(187, 12, 28),
(188, 12, 30),
(189, 12, 31),
(190, 12, 34),
(191, 12, 37),
(192, 12, 38),
(193, 13, 18),
(194, 13, 19),
(195, 13, 20),
(196, 13, 21),
(197, 13, 22),
(198, 13, 23),
(199, 13, 24),
(200, 13, 25),
(201, 13, 27),
(202, 13, 28),
(203, 13, 29),
(204, 13, 30),
(205, 13, 31),
(206, 13, 32),
(207, 13, 33),
(208, 13, 34),
(209, 13, 35),
(210, 13, 36),
(211, 13, 37),
(212, 13, 38),
(213, 13, 39),
(214, 14, 18),
(215, 14, 19),
(216, 14, 20),
(217, 14, 21),
(218, 14, 22),
(219, 14, 23),
(220, 14, 25),
(221, 14, 27),
(222, 14, 28),
(223, 14, 29),
(224, 14, 31),
(225, 14, 33),
(226, 14, 34),
(227, 14, 35),
(228, 14, 36),
(229, 14, 38),
(230, 14, 39),
(231, 15, 18),
(232, 15, 19),
(233, 15, 20),
(234, 15, 21),
(235, 15, 22),
(236, 15, 23),
(237, 15, 24),
(238, 15, 25),
(239, 15, 27),
(240, 15, 28),
(241, 15, 29),
(242, 15, 30),
(243, 15, 31),
(244, 15, 33),
(245, 15, 34),
(246, 15, 35),
(247, 15, 36),
(248, 15, 37),
(249, 15, 38),
(250, 15, 39),
(251, 16, 18),
(252, 16, 24),
(253, 16, 27),
(254, 16, 28),
(255, 16, 29),
(256, 16, 31),
(257, 16, 34),
(258, 16, 35),
(259, 16, 36),
(260, 16, 37);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(27, 11, 'IMG_56355.jpg', 1),
(28, 15, 'IMG_91100.jpg', 1),
(29, 9, 'IMG_76705.jpg', 1),
(30, 14, 'IMG_37988.jpg', 1),
(31, 8, 'IMG_50342.jpg', 1),
(32, 16, 'IMG_96244.jpg', 1),
(33, 12, 'IMG_19627.jpg', 1),
(34, 13, 'IMG_18961.jpg', 1),
(35, 10, 'IMG_54933.jpg', 1),
(36, 7, 'IMG_48426.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'Kobe Haven Hotels', 'Welcome to a new era of hotel management where efficiency meets elegance. Our cutting-edge Hotel Management System is designed to streamline operations, enhance guest experiences, and maximize revenue. From effortless booking management to real-time ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(2, 'user', 'user@gmail.com', 'Philippines', '123', 123324, '2022-06-12', '', '$2y$10$2IsUjaIwxb/UuaR7abvUNOs/VKmwy848VPsNnswF4bIFRIMDE36zm', 1, NULL, NULL, 0, '2022-06-12 16:05:59'),
(5, 'kobe dime', 'kobedime@gmail.com', 'Philippines', '09679218181', 1118, '2024-08-01', 'IMG_71074.jpeg', '$2y$10$5FHJRYEdTUHrqbFY5wfcyeTc5NP8gs1KKB6JfoX6yblEdty8o0mAO', 1, NULL, NULL, 0, '2024-08-10 13:51:44'),
(6, 'kobe', 'kobe@gmail.com', 'Philippines', '09679216161', 1118, '1998-08-24', 'IMG_20126.jpeg', '$2y$10$SKRM.KJEGYeYCxx.gthVFOGU/LEjeUfUwOaRSuUpeOQ8kXawC89AC', 1, NULL, NULL, 1, '2024-08-13 11:53:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features id` (`features_id`),
  ADD KEY `rm id` (`room_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Constraints for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD CONSTRAINT `rating_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `rating_review_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`);

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
