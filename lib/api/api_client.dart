import 'package:dio/dio.dart';
import 'package:flutter_study/api/response/current_user_info_entity.dart';
import 'package:flutter_study/api/response/encrypt_key_entity.dart';
import 'package:flutter_study/api/response/fav_board_and_forum_entity.dart';
import 'package:flutter_study/api/response/file_upload_entity.dart';
import 'package:flutter_study/api/response/gather_thread_page_info_entity.dart';
import 'package:flutter_study/api/response/is_rated_batch_entity.dart';
import 'package:flutter_study/api/response/map_config_entity.dart';
import 'package:flutter_study/api/response/message_entity.dart';
import 'package:flutter_study/api/response/mobile_bg_url_entity.dart';
import 'package:flutter_study/api/response/my_gather_entity.dart';
import 'package:flutter_study/api/response/publish_thread_entity.dart';
import 'package:flutter_study/api/response/record_list_entity.dart';
import 'package:flutter_study/api/response/system_time_entity.dart';
import 'package:flutter_study/api/response/thread_page_entity.dart';
import 'package:flutter_study/api/response/token_entity.dart';
import 'package:flutter_study/api/response/user_comment_list_entity.dart';
import 'package:flutter_study/api/response/user_second_recom_thread_entity.dart';
import 'package:flutter_study/api/response/user_thread_entity.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/api/other/getSystemTime")
  Future<SystemTimeEntity?> getSystemTime();

  @GET("/api/app/getEncryptKey")
  Future<EncryptKeyEntity?> getEncryptKey();

  @GET("/api/user/getCurrentUserInfo")
  Future<CurrentUserInfoEntity?> getCurrentUserInfo({
    @Query("withFavs") bool withFavs = true,
    @Query("useCache") bool useCache = false,
    @Query("withCommentNum") bool withCommentNum = false,
    @Query("withLouNewsNum") bool withLouNewsNum = false,
    @Query("withPosts") bool withPosts = false,
  });

  @GET("/api/recommend/getUserSecondRecomThread")
  Future<UserSecondRecomThreadEntity?> getUserSecondRecomThread({
    @Query("industryId") required String industryId,
    @Query("page") int page = 1,
    @Query("perPage") int perPage = 10,
    @Query("secInfoId") int secInfoId = 0,
  });

  @GET("/api/user/getMobileBgUrl")
  Future<MobileBgUrlEntity?> getMobileBgUrl({
    @Query("uid") required int uid,
    @Query("withMsgShieldStatus") bool page = true,
  });

  @GET("/api/myinfo/getUserThread")
  Future<UserThreadEntity?> getUserThread({
    @Query("page") int page = 1,
    @Query("perPage") int perPage = 30,
    @Query("city") String secInfoId = "allCity",
  });

  @GET("/api/board/getUserCommentList")
  Future<UserCommentListEntity?> getUserCommentList({
    @Query("isMine") int uid = 1,
    @Query("page") int page = 1,
    @Query("perPage") int perPage = 20,
  });

  @GET("/api/myinfo/getMyGather")
  Future<MyGatherEntity?> getMyGather({@Query("uid") int uid = 0});

  @GET("/api/myinfo/getGatherThreadPageInfo")
  Future<GatherThreadPageInfoEntity?> getGatherThreadPageInfo({
    @Query("gatherId") required String gatherId,
    @Query("order") required String order,
    @Query("page") int page = 1,
    @Query("perPage") int perPage = 10,
    @Query("currentTid") int currentTid = 0,
  });

  @GET("/api/board/isRatedBatch")
  Future<IsRatedBatchEntity?> isRatedBatch({
    @Query("tidPids") required String tidPids,
  });

  @GET("/api/app/getSiteMapConfig")
  Future<MapConfigEntity?> getSiteMapConfig();

  @GET("/record/list")
  Future<RecordListEntity?> recordList({
    @Query("cityId") required int cityId,
    @Query("page") int page = 1,
    @Query("pageSize") int pageSize = 10,
    @Query("pass") int pass = 0,
    @Query("limitDateTime") int limitDateTime = 0,
  });

  @GET("/api/board/getFavBoardAndForumByType")
  Future<FavBoardAndForumEntity?> getFavBoardAndForumByType({
    @Query("page") int page = 1,
    @Query("perPage") int perPage = 30,
    @Query("favType") int favType = 0,
  });

  @GET("/api/thread/getThreadPage")
  Future<ThreadPageEntity?> getThreadPage({
    @Query("page") int page = 1,
    @Query("perPage") int perPage = 20,
    @Query("fid") required String fid,
    @Query("tag") int tag = 0,
    @Query("listType") String listType = "all",
    @Query("onlyStick") bool onlyStick = true,
    @Query("withoutStick") bool withoutStick = true,
  });

  @GET("/api/msg/getList")
  Future<MessageEntity?> getList({
    @Query("limit") int limit,
    @Query("nextNew") required bool nextNew,
    @Query("nextDate") String? nextDate,
  });

  //-----------------------------------以下post----------------------------------

  @POST("/oauth/token")
  Future<TokenEntity?> login(@Body() FormData data);

  @POST("/api/user/fileUpload")
  Future<FileUploadEntity?> fileUpload(@Body() FormData data);

  @POST("/api/thread/publishThread")
  Future<PublishThreadEntity?> publishThread(@Body() FormData data);
}
