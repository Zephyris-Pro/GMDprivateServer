<?php
chdir(dirname(__FILE__));
//error_reporting(0);
include "../lib/connection.php";
require_once "../lib/GJPCheck.php";
require_once "../lib/exploitPatch.php";

$accountID = GJPCheck::getAccountIDOrDie();
$mS = ExploitPatch::remove($_POST["mS"]);
$frS = ExploitPatch::remove($_POST["frS"]);
$cS = ExploitPatch::remove($_POST["cS"]);
$youtubeurl = ExploitPatch::remove($_POST["yt"]);
$twitter = ExploitPatch::remove($_POST["twitter"]);
$twitch = ExploitPatch::remove($_POST["twitch"]);
$instagram = ExploitPatch::remove($_POST["instagram"]);
$discord = ExploitPatch::remove($_POST["discord"]);
$tiktok = ExploitPatch::remove($_POST["tiktok"]);
$custom = ExploitPatch::remove($_POST["custom"]);

$query = $db->prepare("UPDATE accounts SET mS=:mS, frS=:frS, cS=:cS, youtubeurl=:youtubeurl, twitter=:twitter, twitch=:twitch, instagram=:instagram, tiktok=:tiktok, discord=:discord, custom=:custom WHERE accountID=:accountID");
$query->execute([':mS' => $mS, ':frS' => $frS, ':cS' => $cS, ':youtubeurl' => $youtubeurl, ':accountID' => $accountID, ':twitch' => $twitch, ':twitter' => $twitter, ':instagram' => $instagram, ':discord' => $discord, ':tiktok' => $tiktok, ':custom' => $custom]);
echo 1;
?>
