
DROP DATABASE IF EXISTS `e_mtiyaz_group`;
CREATE DATABASE `e_mtiyaz_group`;

USE `e_mtiyaz_group`;

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
    `id_article` int(11) NOT NULL AUTO_INCREMENT,
    `title` varchar(30) COLLATE utf8_bin NOT NULL,
    `body` text COLLATE utf8_bin NOT NULL,
    `img_path` text COLLATE utf8_bin NOT NULL,
    `date` date NOT NULL,
    PRIMARY KEY (`id_article`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

INSERT INTO `article` (`title`, `body`, `img_path`, `date`) VALUES
("Title 1", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At augue eget arcu dictum varius duis at. Aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin. Tellus cras adipiscing enim eu. Maecenas volutpat blandit aliquam etiam erat velit scelerisque in dictum. Sed viverra ipsum nunc aliquet bibendum enim. Auctor eu augue ut lectus arcu. Aliquet eget sit amet tellus cras adipiscing enim eu. Suscipit adipiscing bibendum est ultricies integer quis auctor. Mi sit amet mauris commodo quis imperdiet massa. Nibh sed pulvinar proin gravida hendrerit. Scelerisque purus semper eget duis at tellus at. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Cursus sit amet dictum sit. Integer enim neque volutpat ac tincidunt vitae semper quis. Vehicula ipsum a arcu cursus vitae congue. Enim facilisis gravida neque convallis a. Nunc scelerisque viverra mauris in aliquam sem fringilla. Diam ut venenatis tellus in metus vulputate eu scelerisque. Venenatis a condimentum vitae sapien pellentesque.", "...", "2019-12-21");
INSERT INTO `article` (`title`, `body`, `img_path`, `date`) VALUES
("Title 1", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At augue eget arcu dictum varius duis at. Aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin. Tellus cras adipiscing enim eu. Maecenas volutpat blandit aliquam etiam erat velit scelerisque in dictum. Sed viverra ipsum nunc aliquet bibendum enim. Auctor eu augue ut lectus arcu. Aliquet eget sit amet tellus cras adipiscing enim eu. Suscipit adipiscing bibendum est ultricies integer quis auctor. Mi sit amet mauris commodo quis imperdiet massa. Nibh sed pulvinar proin gravida hendrerit. Scelerisque purus semper eget duis at tellus at. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Cursus sit amet dictum sit. Integer enim neque volutpat ac tincidunt vitae semper quis. Vehicula ipsum a arcu cursus vitae congue. Enim facilisis gravida neque convallis a. Nunc scelerisque viverra mauris in aliquam sem fringilla. Diam ut venenatis tellus in metus vulputate eu scelerisque. Venenatis a condimentum vitae sapien pellentesque.", "...", "2019-12-21");
INSERT INTO `article` (`title`, `body`, `img_path`, `date`) VALUES
("Title 1", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At augue eget arcu dictum varius duis at. Aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin. Tellus cras adipiscing enim eu. Maecenas volutpat blandit aliquam etiam erat velit scelerisque in dictum. Sed viverra ipsum nunc aliquet bibendum enim. Auctor eu augue ut lectus arcu. Aliquet eget sit amet tellus cras adipiscing enim eu. Suscipit adipiscing bibendum est ultricies integer quis auctor. Mi sit amet mauris commodo quis imperdiet massa. Nibh sed pulvinar proin gravida hendrerit. Scelerisque purus semper eget duis at tellus at. In tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Cursus sit amet dictum sit. Integer enim neque volutpat ac tincidunt vitae semper quis. Vehicula ipsum a arcu cursus vitae congue. Enim facilisis gravida neque convallis a. Nunc scelerisque viverra mauris in aliquam sem fringilla. Diam ut venenatis tellus in metus vulputate eu scelerisque. Venenatis a condimentum vitae sapien pellentesque.", "...", "2019-12-21");
