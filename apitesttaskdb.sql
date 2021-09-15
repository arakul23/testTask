-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 15 2021 г., 16:55
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `apitesttaskdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `text`, `post_id`, `user_id`, `created_at`, `updated_at`, `parent_id`) VALUES
(1, 'Non quasi facilis est asperiores eum. Quia ut amet neque soluta in aliquid. Et porro ut voluptas ullam impedit.', 2, 7, '2021-09-15 08:36:16', '2021-09-15 08:36:16', NULL),
(2, 'Velit nam omnis cupiditate necessitatibus itaque nulla totam. Veritatis ipsa consectetur facilis magni sed odio. Aliquid voluptatem sed nobis et et repellendus id ab. At quis pariatur eos quo.', 2, 7, '2021-09-15 08:36:16', '2021-09-15 08:36:16', NULL),
(3, 'Corrupti corporis omnis consectetur totam cupiditate. Iste optio dolores et. Rem dicta et nihil consectetur. Aperiam ex cupiditate saepe et aperiam reiciendis.', 3, 10, '2021-09-15 08:36:16', '2021-09-15 08:36:16', NULL),
(4, 'Magni eum dicta illum similique voluptates ducimus ad. Dolor ut sit voluptatibus ea eligendi neque. Sequi ut omnis id ducimus iste qui.', 7, 9, '2021-09-15 08:36:16', '2021-09-15 08:36:16', NULL),
(5, 'Eum impedit et vitae doloremque ab vel. Enim autem laborum aut necessitatibus ut. Animi rerum omnis adipisci omnis.', 1, 4, '2021-09-15 08:36:16', '2021-09-15 08:36:16', NULL),
(6, 'Dolores iste soluta facere dolore fugiat quaerat tempora. Consequuntur aut sit ullam et expedita. Itaque eveniet non qui dolorem quibusdam labore.', 5, 10, '2021-09-15 08:36:16', '2021-09-15 08:36:16', NULL),
(7, 'Neque molestiae et qui a fugiat. Doloremque eos impedit odit delectus.', 2, 2, '2021-09-15 08:36:16', '2021-09-15 08:36:16', NULL),
(8, 'Pariatur odit nemo numquam reiciendis velit. Blanditiis error inventore recusandae ut vitae esse. Odio vel sit praesentium voluptas ut qui ut.', 4, 9, '2021-09-15 08:36:16', '2021-09-15 08:36:16', NULL),
(9, 'Nam ut ut voluptatum. Qui itaque consectetur ab laudantium laudantium voluptatem ea. Tenetur fugiat quam iusto inventore.', 4, 9, '2021-09-15 08:36:16', '2021-09-15 08:36:16', NULL),
(10, 'Modi totam atque voluptatibus. Sed adipisci illo magni voluptas qui. Qui ut officiis quia quasi aut veniam.', 6, 3, '2021-09-15 08:36:16', '2021-09-15 08:36:16', NULL),
(11, 'Illo omnis ea consequatur quae. Tenetur cumque in adipisci nulla magnam delectus ullam earum.', 7, 9, '2021-09-15 08:36:27', '2021-09-15 08:36:27', NULL),
(12, 'Omnis rerum harum dolor aut. Veritatis hic sapiente commodi quibusdam itaque aut. Labore numquam molestiae odit est voluptas. Sed deleniti accusantium totam possimus ipsam.', 11, 10, '2021-09-15 08:36:27', '2021-09-15 08:36:27', NULL),
(13, 'Sint adipisci illo quidem suscipit. Alias aliquam ullam quia eveniet. Assumenda inventore vitae nisi explicabo et corrupti dolores culpa. Velit itaque sed sunt consequuntur qui neque.', 17, 17, '2021-09-15 08:36:27', '2021-09-15 08:36:27', NULL),
(14, 'Nulla eveniet iusto nisi temporibus quasi est aut. Alias hic aut eaque qui neque non. Ea modi consequuntur sint animi pariatur. Ratione tempora molestiae atque architecto natus sunt illum.', 12, 13, '2021-09-15 08:36:27', '2021-09-15 08:36:27', NULL),
(15, 'Rerum est rerum qui aspernatur est. Dolor hic sed nihil. Dolor quia voluptas eum aut laborum eligendi consequuntur. Distinctio consequatur omnis maxime necessitatibus.', 14, 4, '2021-09-15 08:36:27', '2021-09-15 08:36:27', NULL),
(16, 'Sint illo qui sed enim rerum tempore qui. Odio nobis sed minima quis eveniet maxime. Aut quidem aspernatur magnam eos qui.', 17, 3, '2021-09-15 08:36:27', '2021-09-15 08:36:27', NULL),
(17, 'Minima soluta inventore voluptates voluptas a ratione deserunt est. Delectus earum aut voluptatem esse. Et sunt odit repellat excepturi cumque. Qui vitae ut fugit placeat.', 13, 2, '2021-09-15 08:36:27', '2021-09-15 08:36:27', NULL),
(18, 'Neque aut magni et veniam non. At eius a at voluptatem vero occaecati at. Tempora numquam nesciunt delectus ab quis. Omnis animi nam ducimus sunt beatae ex.', 3, 8, '2021-09-15 08:36:27', '2021-09-15 08:36:27', NULL),
(19, 'Fugit sit quo eligendi et ut et. Accusamus deleniti enim quia nihil asperiores. Dolorum maxime porro omnis est. Ab quidem dolorem dolores ab a cumque.', 11, 8, '2021-09-15 08:36:27', '2021-09-15 08:36:27', NULL),
(20, 'Et rerum sapiente quibusdam voluptates. Quisquam in quam officiis. Qui illo odit id est. Magnam cum quae animi libero saepe ut.', 15, 8, '2021-09-15 08:36:27', '2021-09-15 08:36:27', NULL),
(21, 'Necessitatibus alias neque rerum repellendus est velit velit. Sint a quaerat error sint cum sint. Expedita illo est quis consequuntur dignissimos. Numquam et commodi voluptas fugit.', 16, 17, '2021-09-15 08:36:27', '2021-09-15 08:36:27', 9),
(22, 'Culpa optio sint animi tenetur odio. Rerum ut alias cum.', 9, 4, '2021-09-15 08:36:27', '2021-09-15 08:36:27', 5),
(23, 'Maiores autem asperiores dolorum placeat illum sunt placeat. Rem dolorem accusamus aut. Qui maiores quaerat doloremque aut. Beatae id rerum molestias ad officiis laboriosam.', 2, 4, '2021-09-15 08:36:28', '2021-09-15 08:36:28', 19),
(24, 'Eum dicta et ex repellendus. Optio sunt velit illo mollitia dolores asperiores temporibus. Ea nam error hic rerum molestiae voluptate odio.', 10, 19, '2021-09-15 08:36:28', '2021-09-15 08:36:28', 5),
(25, 'Porro sit est harum temporibus. Vel neque cum nesciunt omnis quasi occaecati. Amet cum esse qui debitis eos sit.', 14, 5, '2021-09-15 08:36:28', '2021-09-15 08:36:28', 15),
(26, 'Dignissimos unde ea aliquam veritatis eaque et est adipisci. Et ab eum dolor perferendis explicabo. Aliquam repudiandae modi fugit dolor enim voluptatum. Doloremque ea beatae vero.', 10, 7, '2021-09-15 08:36:28', '2021-09-15 08:36:28', 2),
(27, 'Consequatur magni iste iusto itaque. Nihil excepturi voluptas tempore beatae libero ullam. Ut dolores doloremque assumenda est.', 5, 15, '2021-09-15 08:36:28', '2021-09-15 08:36:28', 11),
(28, 'Eum voluptas quia rerum voluptas ut et quis. Aliquam dignissimos quod unde sint quae commodi error.', 2, 2, '2021-09-15 08:36:28', '2021-09-15 08:36:28', 21),
(29, 'Ipsam soluta optio ipsam. Sunt explicabo molestiae excepturi similique voluptate dolorem.', 3, 5, '2021-09-15 08:36:28', '2021-09-15 08:36:28', 4),
(30, 'Doloribus quam porro laborum repellendus omnis quas illum. Earum at error sunt enim error dolores laborum. Molestiae nam voluptas velit molestiae recusandae quisquam saepe.', 12, 4, '2021-09-15 08:36:28', '2021-09-15 08:36:28', 14),
(31, 'test3', 1, 1, '2021-09-15 09:13:50', '2021-09-15 09:13:50', NULL),
(32, '345345', 1, 16, '2021-09-15 09:13:54', '2021-09-15 09:44:57', NULL),
(35, 'Odit voluptatem quasi mollitia saepe. Molestiae numquam eos culpa voluptatem et. Laboriosam dolorum in deserunt voluptatibus. Soluta eveniet at consectetur ducimus et dolor.', 12, 26, '2021-09-15 10:01:50', '2021-09-15 10:01:50', NULL),
(36, 'Odit dolores temporibus perferendis ut fugit. Laboriosam dolorum sunt consequatur sunt voluptas voluptates quo. Sed odit voluptas sunt qui et culpa.', 22, 12, '2021-09-15 10:01:50', '2021-09-15 10:01:50', NULL),
(37, 'Et quae soluta voluptatem explicabo. Sunt quia molestiae sit quasi numquam exercitationem et ratione. Placeat magni nisi aliquid explicabo. Facere aut quis error sed sapiente.', 20, 4, '2021-09-15 10:01:50', '2021-09-15 10:01:50', NULL),
(38, 'Corporis et repudiandae asperiores est aperiam. Et sed aut numquam quia hic. Quam aliquam impedit at est.', 10, 7, '2021-09-15 10:01:50', '2021-09-15 10:01:50', NULL),
(39, 'Dolor magnam excepturi at eum dolorem fugiat. Aperiam animi odio et provident facere. Molestiae tempore consequatur totam ut. Commodi nihil illum optio ut eligendi voluptate asperiores sunt.', 8, 26, '2021-09-15 10:01:50', '2021-09-15 10:01:50', NULL),
(40, 'Odit eos debitis nam consequatur accusantium quaerat. Illo adipisci deserunt libero doloremque earum. Illum provident adipisci nesciunt.', 5, 3, '2021-09-15 10:01:51', '2021-09-15 10:01:51', NULL),
(41, 'Ut qui recusandae in odio. In qui porro dolorem eos ut aspernatur mollitia. Minima non voluptas facere aut alias. Corrupti nemo possimus vero praesentium itaque.', 31, 14, '2021-09-15 10:01:51', '2021-09-15 10:01:51', NULL),
(42, 'Ut omnis ducimus excepturi et. Illo quia alias eos eveniet est. Voluptatem nisi et exercitationem.', 31, 26, '2021-09-15 10:01:51', '2021-09-15 10:01:51', NULL),
(43, 'Harum ab id tempore alias ipsa. Quos velit aut hic in perspiciatis. Sunt ullam repudiandae illum animi sint.', 29, 20, '2021-09-15 10:01:51', '2021-09-15 10:01:51', NULL),
(44, 'Sit eaque sapiente odio unde dolor doloremque sequi. Assumenda et ad officia. Omnis ut culpa quod. Laudantium laborum ullam in ex.', 24, 15, '2021-09-15 10:01:51', '2021-09-15 10:01:51', NULL),
(45, 'Veniam dolorem dolorem ea qui laudantium est omnis excepturi. Suscipit exercitationem voluptatem qui atque ipsa. Qui nam enim reprehenderit.', 24, 2, '2021-09-15 10:01:51', '2021-09-15 10:01:51', 5),
(46, 'Ad eligendi a ullam voluptas soluta expedita nobis. Quis sit alias neque iste nulla explicabo. Occaecati nisi tempore et ipsum voluptas.', 5, 17, '2021-09-15 10:01:51', '2021-09-15 10:01:51', 28),
(47, 'Deserunt recusandae incidunt quia porro voluptas itaque. Eaque asperiores sint nobis sint. Eum ipsa aperiam qui suscipit.', 8, 24, '2021-09-15 10:01:51', '2021-09-15 10:01:51', 35),
(48, 'Dolores mollitia accusantium natus hic assumenda. Nulla vitae quidem ipsa veritatis explicabo laborum cumque. Eveniet nisi repellendus sequi aut.', 30, 5, '2021-09-15 10:01:51', '2021-09-15 10:01:51', 7),
(49, 'Sint ut mollitia voluptatem nesciunt. Ea deleniti in et suscipit. Nisi facere ut quaerat vitae in debitis sed. Amet esse voluptatibus culpa vero dolorem atque. Dolore illo quae et quidem voluptas.', 16, 16, '2021-09-15 10:01:51', '2021-09-15 10:01:51', 15),
(50, 'Dolores totam in qui est. Cupiditate rerum ut quasi reprehenderit labore quia reprehenderit. Eius nihil omnis et et et debitis exercitationem. Non dolores et tempora.', 2, 1, '2021-09-15 10:01:51', '2021-09-15 10:01:51', 3),
(51, 'Est illo enim ipsum et voluptas. Nihil non dolor neque consequuntur. Iusto facere eligendi maxime quaerat ipsa molestias.', 28, 2, '2021-09-15 10:01:51', '2021-09-15 10:01:51', 44),
(52, 'Ut enim ipsum id eligendi. Consequuntur sit in impedit et. Nisi itaque est quod quo amet repellendus et rem.', 16, 2, '2021-09-15 10:01:51', '2021-09-15 10:01:51', 6),
(53, 'Sunt accusantium omnis et. Et quidem animi sint voluptatem dolorem tempora. Ullam veniam quas animi officiis quo enim quibusdam.', 13, 21, '2021-09-15 10:01:51', '2021-09-15 10:01:51', 30),
(54, 'Omnis velit recusandae atque non. Similique vel eos perferendis aliquid rem commodi. Quod ex quia sunt similique. Ad et sunt et sed est et quam asperiores.', 17, 6, '2021-09-15 10:01:51', '2021-09-15 10:01:51', 41),
(55, 'Omnis officiis eum omnis doloribus non facere perferendis. Voluptatem ducimus quia dolorem esse nobis non assumenda iusto. Aut repellendus neque quis sint optio sed.', 18, 15, '2021-09-15 10:27:52', '2021-09-15 10:27:52', NULL),
(56, 'Soluta voluptas sed dignissimos saepe in fugiat aut. Consectetur vel aut voluptatem quia in. Voluptatem architecto sunt ex suscipit. Debitis eveniet quia harum sed atque deleniti aut.', 26, 31, '2021-09-15 10:27:52', '2021-09-15 10:27:52', NULL),
(57, 'Similique laboriosam in accusantium perferendis dolorem et. Consequatur qui aut ut corrupti et officia. Voluptatem amet et eaque et ipsum dolores.', 13, 22, '2021-09-15 10:27:52', '2021-09-15 10:27:52', NULL),
(58, 'Quis id voluptatem sit possimus reiciendis exercitationem. Delectus suscipit facere atque repellendus nemo veritatis. Asperiores ad tenetur alias. Sit esse dicta voluptate delectus.', 37, 38, '2021-09-15 10:27:52', '2021-09-15 10:27:52', NULL),
(59, 'Et consequuntur magnam quo consequatur ipsam tempora ea repellendus. Quasi natus accusamus dolore et. Velit aliquid iusto labore quas. Quos minima impedit accusantium autem dolor neque corporis.', 9, 38, '2021-09-15 10:27:52', '2021-09-15 10:27:52', NULL),
(60, 'Neque repudiandae qui ea aut doloremque. Eaque beatae qui accusantium explicabo est saepe. Beatae nisi excepturi modi voluptatibus et itaque in et. Facere error nihil blanditiis occaecati quae.', 25, 7, '2021-09-15 10:27:52', '2021-09-15 10:27:52', NULL),
(61, 'Quae harum nam omnis perspiciatis. Totam omnis iusto ipsam quo sed repellat possimus. Animi voluptas amet non sunt odit quis. Nobis porro adipisci qui culpa ducimus tenetur.', 19, 25, '2021-09-15 10:27:52', '2021-09-15 10:27:52', NULL),
(62, 'Nemo aut consectetur id labore quas ad. Assumenda cumque nisi est cum ducimus ut. Aut omnis commodi facere ab corrupti est.', 23, 29, '2021-09-15 10:27:52', '2021-09-15 10:27:52', NULL),
(63, 'Beatae illum aut eaque mollitia ea cumque. Excepturi aut fuga consequatur iure voluptas commodi aliquam unde. Est quod enim quo.', 29, 39, '2021-09-15 10:27:52', '2021-09-15 10:27:52', NULL),
(64, 'Corporis facilis sit harum ducimus. Cupiditate magnam eveniet quibusdam iusto vero praesentium itaque totam. Et aut consectetur cumque neque.', 40, 37, '2021-09-15 10:27:52', '2021-09-15 10:27:52', NULL),
(65, 'Numquam corrupti commodi et. Nobis at odit aut vitae sit. Rerum enim deserunt doloribus nemo. Velit similique architecto consequatur modi ratione quia omnis.', 34, 22, '2021-09-15 10:27:52', '2021-09-15 10:27:52', 46),
(66, 'Maiores aut a quis officiis omnis beatae. Officiis qui beatae molestiae quasi quisquam ratione. At amet sit nihil ab qui quisquam saepe.', 2, 19, '2021-09-15 10:27:53', '2021-09-15 10:27:53', 23),
(67, 'Cupiditate nostrum quisquam harum est dolore. Qui aut incidunt nisi quidem recusandae repellendus qui. Et laudantium tenetur est deserunt. Qui soluta suscipit rerum eligendi.', 35, 21, '2021-09-15 10:27:53', '2021-09-15 10:27:53', 5),
(68, 'Qui at non quos inventore veritatis dicta libero. Beatae omnis nemo vel eligendi molestiae culpa. Velit ea voluptatibus ea eos beatae et.', 35, 35, '2021-09-15 10:27:53', '2021-09-15 10:27:53', 32),
(69, 'Incidunt libero modi quo sit. Necessitatibus blanditiis natus ea consectetur temporibus aut.', 32, 34, '2021-09-15 10:27:53', '2021-09-15 10:27:53', 49),
(70, 'Nesciunt excepturi nostrum id. Qui nihil adipisci cumque enim minus optio expedita accusantium. Iure dicta sit illo sunt. Qui libero excepturi voluptas ducimus non occaecati alias.', 18, 1, '2021-09-15 10:27:53', '2021-09-15 10:27:53', 46),
(71, 'Veniam magnam ex vitae fugit ut harum. Eos quia sit ut voluptas alias tempora. Modi ex reiciendis aut quis error eos natus. Ut eligendi animi saepe ex quos quasi.', 11, 34, '2021-09-15 10:27:53', '2021-09-15 10:27:53', 62),
(72, 'Quasi fugiat officia fugiat aliquam commodi. Labore non rem perferendis deleniti est est. Sint nesciunt voluptas voluptas itaque fuga cupiditate vitae.', 30, 19, '2021-09-15 10:27:53', '2021-09-15 10:27:53', 21),
(73, 'Alias aperiam sint amet dolorum ea minima. Nihil eum totam omnis adipisci perferendis voluptas vitae praesentium. Voluptatum voluptas aut molestiae in voluptatibus et at. Non iste fugit quisquam quo.', 13, 25, '2021-09-15 10:27:53', '2021-09-15 10:27:53', 31),
(74, 'Quas occaecati numquam earum nostrum. Dignissimos soluta laborum sit consequatur omnis quia. Qui voluptatem temporibus voluptatem aut rerum culpa aut.', 10, 31, '2021-09-15 10:27:53', '2021-09-15 10:27:53', 42);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(69, '2014_10_12_000000_create_users_table', 1),
(70, '2014_10_12_100000_create_password_resets_table', 1),
(71, '2019_08_19_000000_create_failed_jobs_table', 1),
(72, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(73, '2021_09_13_204204_create_posts_table', 1),
(74, '2021_09_13_205010_create_comments_table', 1),
(75, '2021_09_13_210833_change_foreign_keys', 1),
(76, '2021_09_14_174248_add_parent_id_column_comments', 1),
(77, '2021_09_14_174728_add_foreig_key_comments', 1),
(78, '2021_09_14_200659_change_columns_users', 1),
(79, '2021_09_15_102454_set_default_value_views_posts', 1),
(80, '2021_09_15_111312_drop_column_name_users', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `views`, `text`, `image`, `created_at`, `updated_at`) VALUES
(1, 1850420199, 'Ipsa ut consectetur nulla qui eos. Omnis et rerum sequi quasi dolor. Distinctio magni illo eum facere autem.', 'Illum omnis id doloribus ipsum possimus. Laudantium et necessitatibus amet totam rerum voluptatem. Ullam labore dolor officia consectetur.', '2021-09-15 08:36:15', '2021-09-15 08:36:15'),
(2, 532265027, 'Debitis aliquam quia maiores molestiae et consequatur. Dolores molestiae et quod autem sunt qui et. Ut fugit dolores eos totam dolor nisi.', 'Soluta dolor magnam rerum officiis aut. Ut dignissimos quia qui saepe aut. Qui rerum aut quo eius vero sint.', '2021-09-15 08:36:15', '2021-09-15 08:36:15'),
(3, 1928604721, 'Ducimus autem sunt corrupti quia aliquid animi officia debitis. Numquam quidem nemo dolorem autem et at dolore. Doloremque sint unde veniam porro.', 'Non illum voluptatum consequatur qui maxime fugit. Molestiae expedita debitis ducimus sit. Dolor alias sunt optio aut qui tenetur dolore. Nemo nulla voluptatem est inventore qui magnam animi.', '2021-09-15 08:36:15', '2021-09-15 08:36:15'),
(4, 491952314, 'Esse qui dolorem maiores numquam. Id architecto itaque qui qui distinctio. Non nihil facilis labore laudantium.', 'Dolor quia fugiat quia. Nulla quas sit explicabo impedit vitae. Eaque provident enim optio nisi asperiores laudantium explicabo facilis. Eveniet excepturi reiciendis labore.', '2021-09-15 08:36:15', '2021-09-15 08:36:15'),
(5, 1626766342, 'Est fuga pariatur facilis eaque unde. Ipsa non velit pariatur in totam explicabo. Enim laudantium esse non ut voluptatum. Et voluptas voluptatem voluptas quod enim distinctio quisquam.', 'Et perferendis laudantium recusandae iusto nisi et recusandae. Quia quis reprehenderit nostrum dolorem amet. Omnis dolor et voluptate porro amet. Tenetur quisquam architecto totam eveniet eos.', '2021-09-15 08:36:16', '2021-09-15 08:36:16'),
(6, 1842296402, 'Laborum et iusto non non optio. Omnis qui similique debitis et et. Provident voluptas enim dolores et quia quos tempora. Veritatis architecto cum quo ad veritatis sed.', 'Est ut dolores est doloremque. Sapiente suscipit omnis aliquam sed iste in esse. Tempore et est a cumque sit cumque et aperiam. Rerum sunt qui omnis dolor. Maxime ut atque vel molestiae.', '2021-09-15 08:36:16', '2021-09-15 08:36:16'),
(7, 1439657737, 'Nam fuga autem commodi quia consequuntur laudantium. Non qui vel voluptate non. Ducimus eum voluptas vel ad non et. Fugiat rerum enim numquam explicabo earum sed.', 'Aut consequuntur totam quos molestiae aliquam rerum. Sequi quo dignissimos et labore. Et perspiciatis qui animi exercitationem facilis error. Totam rerum maiores sed sit fugit nam.', '2021-09-15 08:36:16', '2021-09-15 08:36:16'),
(8, 1179977091, 'Et labore magni quos enim. Provident at pariatur sapiente velit eligendi inventore. At omnis quidem cum non.', 'Blanditiis quo velit illo earum accusantium dolore. Dolores hic hic doloribus rerum quasi. Esse molestiae vel at ratione expedita quia ut. Quam sit quam ea sequi.', '2021-09-15 08:36:16', '2021-09-15 08:36:16'),
(9, 1139841373, 'Delectus et eius sed in doloremque. Sit tempore et illo expedita eos ut in.', 'Excepturi placeat quia et exercitationem sit tempore. Et corporis ipsam aut aliquid. Qui atque molestiae nemo suscipit aut.', '2021-09-15 08:36:16', '2021-09-15 08:36:16'),
(10, 690555856, 'Magnam eos est molestias soluta dolores. Quam alias dolor aut fuga consectetur. Fugiat et sit ipsa minus dolores. Est voluptatem possimus in impedit.', 'Incidunt totam voluptatem quia sed hic. Dolore aut quo esse. Officiis et dolorum illo occaecati. Quo atque accusantium officiis quisquam.', '2021-09-15 08:36:16', '2021-09-15 08:36:16'),
(11, 653425760, 'Ipsa est nulla eos qui a. Voluptate eos dolores voluptatibus in nihil ut. Velit ut eum vel quaerat.', 'Laudantium eum qui doloremque enim cupiditate. Eaque quas reprehenderit mollitia fugiat provident. Ut mollitia aliquam nemo ratione perspiciatis in. Sit impedit dicta id id est.', '2021-09-15 08:36:26', '2021-09-15 08:36:26'),
(12, 2114276484, 'Veniam cum nulla qui nisi distinctio distinctio. Laboriosam repudiandae eos aspernatur inventore. Sit nesciunt eaque et esse ipsa in aut magni. Quis eligendi deleniti ducimus ut unde aliquid.', 'Quam eaque delectus perferendis tempore blanditiis fuga dolorum. Omnis explicabo omnis corrupti est. Est unde ut molestias praesentium reiciendis dolorem aut.', '2021-09-15 08:36:26', '2021-09-15 08:36:26'),
(13, 1958496902, 'Id asperiores ut animi deleniti error cupiditate cum. Vel et voluptas consequuntur in voluptas vel eius. Odit aliquid vel similique ut ab numquam reiciendis.', 'Labore doloribus illo et nobis repellat. Nulla nemo ut aperiam. Expedita rerum temporibus assumenda laudantium sed repellat voluptas. Omnis voluptate cum ut tempora iste eveniet in.', '2021-09-15 08:36:26', '2021-09-15 08:36:26'),
(14, 2051744617, 'Quibusdam assumenda blanditiis vitae enim et inventore. Dicta facilis quia facere et. Quis dolores praesentium facere molestiae nemo non autem.', 'Aut ut perferendis maiores sint. A tenetur ut facilis veritatis sunt quam totam. Quis dolorum eligendi sequi est sed laudantium tempora. Magni officia quod adipisci totam eveniet soluta.', '2021-09-15 08:36:26', '2021-09-15 08:36:26'),
(15, 1667747353, 'Expedita sit eos est maxime est. Fugit illum optio deserunt nesciunt nobis aut. Laborum aut deserunt eveniet eius. Asperiores assumenda fugiat temporibus tempore fugiat qui.', 'Nihil sit non et maxime repudiandae voluptatem. Velit nam nihil ab. Tempore aut aut quam omnis optio ratione sunt. Quidem voluptatem numquam aut nulla et.', '2021-09-15 08:36:27', '2021-09-15 08:36:27'),
(16, 13622853, 'Quia cum hic et cupiditate sit quod. Saepe consequuntur illum aut hic. Reiciendis debitis aut optio fuga inventore dolore voluptas est. Eveniet in consequuntur tempora inventore.', 'Ut beatae sunt nisi illum sunt. Perferendis laborum atque at sapiente. Sit reiciendis vel ut quia eius blanditiis ea. Explicabo id rerum illo aut incidunt nisi sunt.', '2021-09-15 08:36:27', '2021-09-15 08:36:27'),
(17, 76015596, 'Excepturi culpa rerum doloremque. Neque ipsum laudantium nihil est mollitia suscipit aut. Consequatur nemo occaecati est laborum officiis eaque.', 'At dolorem inventore suscipit reprehenderit repudiandae et. Eos mollitia eos at non libero possimus. Sit minima dolor qui itaque esse possimus.', '2021-09-15 08:36:27', '2021-09-15 08:36:27'),
(18, 1456031482, 'Eaque aut aut voluptatem facere consectetur quas et. Quia voluptas vel vel dolorum eos.', 'Unde in dolorem consequuntur facilis earum dolorum sequi. Consectetur iusto aliquid odit quis molestiae deleniti natus perspiciatis. Laboriosam alias temporibus praesentium quasi.', '2021-09-15 08:36:27', '2021-09-15 08:36:27'),
(19, 1548454139, 'Enim saepe aut et ipsa voluptas ullam. Id velit aut tempora quaerat enim. Exercitationem ut molestias pariatur qui corporis.', 'Ipsam optio et voluptates sapiente et voluptatem sint. Qui fugit quidem quia natus explicabo et. Minima officia nemo molestiae porro.', '2021-09-15 08:36:27', '2021-09-15 08:36:27'),
(20, 1161291750, 'Quia omnis quo magnam enim aut. Adipisci culpa cumque at unde. Magni cupiditate assumenda tempora ut cum non quasi nihil. Illum sit cum aliquam tempora perspiciatis quas rem nemo.', 'Aperiam iusto tempora quia a officiis exercitationem earum. Ipsa maiores deserunt quam dolorum in ut. Aliquam quod placeat in. Assumenda qui eum est.', '2021-09-15 08:36:27', '2021-09-15 08:36:27'),
(21, 0, 'test3', 'dd@mail.ru', '2021-09-15 08:36:45', '2021-09-15 08:36:45'),
(22, 219007984, 'Omnis assumenda repellat et numquam et ut. Enim atque qui modi ut vero sapiente. Reiciendis eveniet sunt esse tenetur.', 'Eaque voluptatem consequatur eum dolorum iusto et assumenda. Soluta soluta molestiae ab laborum deleniti qui. Nostrum quia officiis ea vel. Laborum mollitia adipisci et et quo aut quasi et.', '2021-09-15 10:01:50', '2021-09-15 10:01:50'),
(23, 1317369216, 'Porro laboriosam libero dolores mollitia neque cumque. Explicabo quibusdam adipisci earum sequi molestiae. Saepe aut eligendi quis dicta odio. Sit velit hic et.', 'Adipisci minima reiciendis id neque. Est nesciunt nisi neque illum sequi sed a non.', '2021-09-15 10:01:50', '2021-09-15 10:01:50'),
(24, 1299896277, 'Provident aut non voluptate et tempore. Neque ut consequatur at nisi quae est voluptatem neque. At nihil provident ea est. Provident enim non odio beatae sint.', 'Ratione minus a non ut. Voluptatibus cumque nesciunt et vero vel nobis quaerat excepturi. Nemo natus laboriosam aliquid reiciendis recusandae pariatur praesentium.', '2021-09-15 10:01:50', '2021-09-15 10:01:50'),
(25, 2100435933, 'Sint consequatur quasi eos perferendis doloribus ut debitis autem. Modi velit suscipit temporibus consequuntur tenetur adipisci ipsam. Perspiciatis ducimus culpa quibusdam ipsa non.', 'Labore repudiandae fuga vel accusamus molestiae. Blanditiis est omnis fugit odio beatae animi. Numquam optio laborum inventore.', '2021-09-15 10:01:50', '2021-09-15 10:01:50'),
(26, 1708379302, 'Nemo autem similique sit dolorem sint eos illo. Et enim necessitatibus nesciunt et molestiae facilis ipsam ab. Aliquid laboriosam sit ut blanditiis expedita. Quia culpa dolorum dolor corrupti.', 'Veritatis sit consequatur error et magni quia aliquam. Animi sint soluta blanditiis eum animi. Nesciunt eius consequatur dolor quo porro nam rerum.', '2021-09-15 10:01:50', '2021-09-15 10:01:50'),
(27, 905286140, 'Qui non nihil eaque dignissimos et at fugit. Voluptatem quisquam quos corporis dolor laudantium ipsa est. Et sit sed enim iusto vel. Ullam ut expedita iusto officiis quo eum.', 'Magni numquam neque dolor nesciunt est perferendis nemo. Qui possimus eaque iure autem et veniam aut similique.', '2021-09-15 10:01:50', '2021-09-15 10:01:50'),
(28, 611569922, 'Repellendus sed vero iure repudiandae sit enim. Illum ut ad enim eius. Aspernatur voluptatum enim eos voluptas minima similique.', 'Sequi maiores animi iure rem minus. Repellendus laborum maiores et ut qui magni illum. Vel optio error non ut ut quia error.', '2021-09-15 10:01:50', '2021-09-15 10:01:50'),
(29, 1824057454, 'In repellat est et eveniet. Repellendus libero accusantium et et ut aut facilis. Perspiciatis ut dolor voluptatibus itaque esse omnis. Rerum officiis iure cumque quia non.', 'Sed et recusandae fuga. Qui id id laboriosam ut voluptatibus nihil voluptatem. Unde nihil eaque iusto qui quod quia maiores. Corporis est et esse dolores et.', '2021-09-15 10:01:50', '2021-09-15 10:01:50'),
(30, 56003634, 'Accusamus dolorum voluptatem occaecati voluptatum sunt qui itaque. Est eos enim quas perspiciatis voluptatem. Dignissimos aut ea debitis fuga voluptas quis maiores culpa.', 'Ipsam voluptatum quia sapiente dignissimos. Aut aperiam non labore consequatur ut molestiae error.', '2021-09-15 10:01:50', '2021-09-15 10:01:50'),
(31, 1417078773, 'Aut dolores natus repellendus cumque blanditiis facilis. Molestiae mollitia et quis perferendis quo et autem asperiores. Excepturi qui praesentium et cumque vero. Quam quis dolores occaecati.', 'At aspernatur omnis placeat eligendi amet nisi. Ad et non quisquam id.', '2021-09-15 10:01:50', '2021-09-15 10:01:50'),
(32, 2034056395, 'Ut nihil sunt provident est eum et ut. Quia quos et autem. Sint ducimus nemo nihil omnis aut. Architecto non rerum quia sed qui accusantium ex.', 'Id fuga esse reprehenderit doloremque asperiores id. Blanditiis impedit rem officiis blanditiis tempora voluptatem ullam dolore. Qui quia excepturi est est velit vel.', '2021-09-15 10:27:52', '2021-09-15 10:27:52'),
(33, 1485312118, 'Autem natus itaque ut aut quod veritatis. Architecto iste et nihil sapiente. Molestiae soluta nihil sit dignissimos ullam rerum.', 'Placeat eveniet tempore non neque veniam. Soluta cupiditate debitis sint sed molestias animi. Provident quisquam et commodi hic. Rerum fuga voluptas sint non distinctio hic.', '2021-09-15 10:27:52', '2021-09-15 10:27:52'),
(34, 1760242022, 'Maxime est iure distinctio suscipit eligendi veniam aliquam. Sapiente eveniet velit quia at. Placeat sit quasi sint.', 'Porro ea doloribus natus perferendis explicabo qui dolores. At omnis eius odio vel quam aliquid est eum.', '2021-09-15 10:27:52', '2021-09-15 10:27:52'),
(35, 1762945003, 'Atque eligendi iure voluptas. Nihil rerum aut non assumenda et. Et et impedit veritatis saepe in culpa earum. Qui quo aut harum adipisci fuga.', 'Ea consectetur vel non deserunt dolor voluptatem. Ut molestiae itaque pariatur voluptates. Reprehenderit quis non optio incidunt dolor voluptatibus. Sed deserunt quia doloribus non sunt nam in.', '2021-09-15 10:27:52', '2021-09-15 10:27:52'),
(36, 537318561, 'Voluptatum quibusdam dolorem totam rerum soluta accusantium. Nihil voluptatem sed autem ut. Sit in voluptatibus eaque deserunt nesciunt. Sunt temporibus rerum saepe ut quas aut ipsa.', 'Esse sit magnam sit id. Iusto provident repudiandae mollitia est. Dolorem ut itaque quas ratione labore nisi.', '2021-09-15 10:27:52', '2021-09-15 10:27:52'),
(37, 315716629, 'Ut sequi harum molestias voluptatem debitis nihil qui. Dolores facilis quo possimus totam rerum. Dolorum eius cum laudantium ullam.', 'Eius placeat necessitatibus sequi. Et et totam aliquid repellat itaque delectus. Harum voluptatibus dolor provident nisi tenetur.', '2021-09-15 10:27:52', '2021-09-15 10:27:52'),
(38, 1700412961, 'Ut nesciunt minus ut consequatur doloribus similique commodi. Rerum ea temporibus non ipsum recusandae alias itaque. Voluptates fugiat labore alias id amet soluta.', 'Molestias nulla sunt eveniet omnis. Eum non ipsam nesciunt sint ad quod voluptas. Id consequatur pariatur quas. Omnis enim esse tempore commodi et ipsum minima.', '2021-09-15 10:27:52', '2021-09-15 10:27:52'),
(39, 1712473015, 'Amet reprehenderit dolore laborum beatae error nihil laborum ut. Iure labore optio dicta. Est vero aut et impedit. Corporis autem hic perspiciatis qui hic ad rerum et.', 'Doloribus eum similique quaerat sit et ut voluptatem. Illum quam facere placeat adipisci laborum. Recusandae cupiditate maxime dolores.', '2021-09-15 10:27:52', '2021-09-15 10:27:52'),
(40, 667917010, 'Aut occaecati dolores quod omnis ut necessitatibus sed. Dignissimos et enim accusantium assumenda.', 'Consequatur nulla dolore inventore aut nemo. Debitis in possimus labore non facere enim. Voluptas nostrum suscipit doloribus dolor assumenda aut.', '2021-09-15 10:27:52', '2021-09-15 10:27:52'),
(41, 627743744, 'Perferendis autem voluptatem voluptatum dignissimos a consequatur nihil. Occaecati sit sequi expedita ea quasi voluptatem.', 'Voluptate maxime ullam soluta voluptas nihil ullam beatae id. Illum ipsa ut excepturi et rem. Architecto expedita accusantium ea non vel quas perferendis fugit.', '2021-09-15 10:27:52', '2021-09-15 10:27:52');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `gender`, `birthday`) VALUES
(1, 'murphy.marcelle@example.com', '2021-09-15 08:36:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IaYhm5xBGH', '2021-09-15 08:36:15', '2021-09-15 08:36:15', 'Isadore Schamberger', 'Kylee Bashirian', 'female', '2016-05-24'),
(2, 'eula.cole@example.org', '2021-09-15 08:36:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CoCl9WHe0b', '2021-09-15 08:36:15', '2021-09-15 08:36:15', 'Rosalinda Beer', 'Betty Barton', 'female', '2010-01-23'),
(3, 'sawayn.mafalda@example.net', '2021-09-15 08:36:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UjgQuU54oQ', '2021-09-15 08:36:15', '2021-09-15 08:36:15', 'Ms. Samanta Dooley IV', 'Vicky Kuvalis', 'male', '2002-02-06'),
(4, 'hank35@example.com', '2021-09-15 08:36:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GqIsyHH4su', '2021-09-15 08:36:15', '2021-09-15 08:36:15', 'Savannah Hettinger', 'Palma Jacobi', 'male', '1995-12-05'),
(5, 'kenton.berge@example.org', '2021-09-15 08:36:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 't6Dgxmhwte', '2021-09-15 08:36:15', '2021-09-15 08:36:15', 'Tillman Strosin V', 'Prof. Claud Padberg', 'female', '2011-10-17'),
(6, 'hunter.collins@example.net', '2021-09-15 08:36:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6LFbLrkUCu', '2021-09-15 08:36:15', '2021-09-15 08:36:15', 'Prof. Ernesto Monahan IV', 'Vernon Beer', 'female', '1996-04-17'),
(7, 'flavio.schaefer@example.com', '2021-09-15 08:36:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PYz2PsaNWK', '2021-09-15 08:36:15', '2021-09-15 08:36:15', 'Adriel Rolfson', 'Barry Roob DDS', 'female', '1992-05-23'),
(8, 'berry.roob@example.com', '2021-09-15 08:36:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gRr1tuPt0o', '2021-09-15 08:36:15', '2021-09-15 08:36:15', 'Tillman Kozey', 'Dave Kub', 'female', '1978-04-08'),
(9, 'dskiles@example.org', '2021-09-15 08:36:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q4teK8cAQA', '2021-09-15 08:36:15', '2021-09-15 08:36:15', 'Devante Abshire', 'Lisandro Cartwright', 'male', '1983-08-14'),
(10, 'muriel19@example.org', '2021-09-15 08:36:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I36vGdxIsi', '2021-09-15 08:36:15', '2021-09-15 08:36:15', 'Prof. Foster Gibson I', 'Rosalinda Mueller', 'male', '2009-12-24'),
(11, 'hwhite@example.org', '2021-09-15 08:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bb0sW7HzU5', '2021-09-15 08:36:26', '2021-09-15 08:36:26', 'Jimmie Greenfelder', 'Ludwig Monahan', 'male', '2001-10-14'),
(12, 'feest.tremaine@example.net', '2021-09-15 08:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BD0yKpbrHF', '2021-09-15 08:36:26', '2021-09-15 08:36:26', 'Joe Dicki', 'Bobby Block V', 'female', '1986-03-30'),
(13, 'edmond51@example.net', '2021-09-15 08:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Gindd192vG', '2021-09-15 08:36:26', '2021-09-15 08:36:26', 'Vicenta Stracke', 'Elinore Hackett', 'female', '1985-02-09'),
(14, 'kcrist@example.org', '2021-09-15 08:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xeyJzLslhs', '2021-09-15 08:36:26', '2021-09-15 08:36:26', 'Hannah Kilback', 'Prof. Name Emmerich', 'male', '1990-06-24'),
(15, 'spencer.elijah@example.org', '2021-09-15 08:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TBGv1f5mod', '2021-09-15 08:36:26', '2021-09-15 08:36:26', 'Nadia Nienow', 'Sharon Koss', 'male', '1993-12-28'),
(16, 'qzboncak@example.org', '2021-09-15 08:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rtdVwFDSnz', '2021-09-15 08:36:26', '2021-09-15 08:36:26', 'Miller O\'Kon', 'Dr. Ellen Schmidt Jr.', 'male', '1976-12-12'),
(17, 'fanny91@example.net', '2021-09-15 08:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TdoeuXXp6P', '2021-09-15 08:36:26', '2021-09-15 08:36:26', 'Prof. Glennie Okuneva', 'Kyler Schmidt', 'male', '1979-05-02'),
(18, 'yortiz@example.net', '2021-09-15 08:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bqqht0VzGB', '2021-09-15 08:36:26', '2021-09-15 08:36:26', 'Dina Wyman I', 'Malachi Runte II', 'female', '1995-10-11'),
(19, 'mathew.boyer@example.org', '2021-09-15 08:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0PuXNit4tl', '2021-09-15 08:36:26', '2021-09-15 08:36:26', 'Dakota O\'Reilly', 'Erin Heidenreich', 'female', '1985-03-18'),
(20, 'tyrel07@example.org', '2021-09-15 08:36:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C7sqvBgs9c', '2021-09-15 08:36:26', '2021-09-15 08:36:26', 'Derrick Goyette', 'Dr. Delpha Mante Sr.', 'male', '1998-12-22'),
(21, 'madilyn.goldner@example.net', '2021-09-15 10:01:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hGTgWKk9Q7', '2021-09-15 10:01:49', '2021-09-15 10:01:49', 'Luz Kunde', 'Mr. Michael Yost V', 'female', '2014-07-09'),
(22, 'skrajcik@example.com', '2021-09-15 10:01:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dWptc20FxA', '2021-09-15 10:01:50', '2021-09-15 10:01:50', 'Dr. Herman Kris', 'Prof. Green Tillman', 'female', '1992-01-30'),
(23, 'dickens.santa@example.net', '2021-09-15 10:01:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GL85LirPgY', '2021-09-15 10:01:50', '2021-09-15 10:01:50', 'Prof. Garnet Lemke DDS', 'Cindy McClure IV', 'female', '2008-12-22'),
(24, 'padberg.dulce@example.com', '2021-09-15 10:01:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Q0yGkDcMfC', '2021-09-15 10:01:50', '2021-09-15 10:01:50', 'Shanny Hoppe', 'Mallory Shields MD', 'female', '2019-01-29'),
(25, 'rmarks@example.com', '2021-09-15 10:01:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZGA4RS2ZhA', '2021-09-15 10:01:50', '2021-09-15 10:01:50', 'Mrs. Tania White Jr.', 'Norene Walsh MD', 'female', '2005-01-30'),
(26, 'arvilla.nicolas@example.org', '2021-09-15 10:01:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ah0OKdTQOj', '2021-09-15 10:01:50', '2021-09-15 10:01:50', 'Shanna Bogan', 'Ramiro Stokes', 'male', '2006-07-06'),
(27, 'bogan.katelyn@example.com', '2021-09-15 10:01:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tmnAwWGTOB', '2021-09-15 10:01:50', '2021-09-15 10:01:50', 'Esperanza Grimes', 'Garret Welch', 'male', '1995-04-12'),
(28, 'crawford.zboncak@example.com', '2021-09-15 10:01:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HVtRHdqHwF', '2021-09-15 10:01:50', '2021-09-15 10:01:50', 'Hazel Cummings', 'Skye Rosenbaum', 'female', '1975-03-03'),
(29, 'ybeer@example.org', '2021-09-15 10:01:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zQkVC7fQgh', '2021-09-15 10:01:50', '2021-09-15 10:01:50', 'Delores Hermann', 'Florencio Shields', 'female', '2017-01-28'),
(30, 'allison.corwin@example.org', '2021-09-15 10:01:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pILgjXqV6m', '2021-09-15 10:01:50', '2021-09-15 10:01:50', 'Coby Jacobson', 'Shaun Ritchie V', 'male', '1984-08-16'),
(31, 'hand.cassie@example.com', '2021-09-15 10:27:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tc6vw5n7Co', '2021-09-15 10:27:51', '2021-09-15 10:27:51', 'Meaghan Donnelly', 'Kelsie Dickens', 'male', '1977-07-28'),
(32, 'kankunding@example.net', '2021-09-15 10:27:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KBEnsOlJf7', '2021-09-15 10:27:51', '2021-09-15 10:27:51', 'Crawford Cummerata', 'Tiffany Schulist', 'female', '2014-10-26'),
(33, 'seffertz@example.net', '2021-09-15 10:27:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bn81KwIxAz', '2021-09-15 10:27:51', '2021-09-15 10:27:51', 'Mrs. Dayna Hickle Sr.', 'Prudence Kassulke', 'male', '2000-01-24'),
(34, 'lazaro.bode@example.net', '2021-09-15 10:27:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dFSSMzF4Hl', '2021-09-15 10:27:51', '2021-09-15 10:27:51', 'Emmet Wintheiser', 'Prof. Summer Tillman', 'male', '1999-05-19'),
(35, 'kali.haag@example.net', '2021-09-15 10:27:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E0osAqomLC', '2021-09-15 10:27:51', '2021-09-15 10:27:51', 'Miss Wilhelmine Muller MD', 'Roman Mayert MD', 'male', '2001-05-26'),
(36, 'areichert@example.com', '2021-09-15 10:27:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3aFzATGJTv', '2021-09-15 10:27:51', '2021-09-15 10:27:51', 'Prof. Haven Marvin IV', 'Mortimer Schuppe', 'female', '1976-02-02'),
(37, 'mariela.hintz@example.org', '2021-09-15 10:27:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '56btVZdi1K', '2021-09-15 10:27:52', '2021-09-15 10:27:52', 'Dorian Frami', 'Cristobal Harvey', 'male', '1997-09-27'),
(38, 'cnikolaus@example.net', '2021-09-15 10:27:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1miuqXWo1H', '2021-09-15 10:27:52', '2021-09-15 10:27:52', 'Prof. Makenna Oberbrunner MD', 'Makenzie Ferry', 'female', '1976-11-22'),
(39, 'emmerich.thalia@example.net', '2021-09-15 10:27:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JfBpMDdXY8', '2021-09-15 10:27:52', '2021-09-15 10:27:52', 'Raymond Rolfson', 'Esther Ritchie', 'male', '2013-04-17'),
(40, 'greta25@example.com', '2021-09-15 10:27:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6o6qws6TbM', '2021-09-15 10:27:52', '2021-09-15 10:27:52', 'Craig Schumm', 'Kiley Bradtke', 'female', '1981-08-14');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_parent_id_foreign` (`parent_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
