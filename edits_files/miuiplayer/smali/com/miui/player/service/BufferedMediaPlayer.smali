.class public Lcom/miui/player/service/BufferedMediaPlayer;
.super Ljava/lang/Object;
.source "BufferedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;,
        Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;,
        Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;,
        Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;,
        Lcom/miui/player/service/BufferedMediaPlayer$OnBufferedPositionChangedListener;,
        Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;,
        Lcom/miui/player/service/BufferedMediaPlayer$OnBlockingChangedListener;,
        Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;,
        Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_REMOTE_MEDIA_DURATION:J = 0x493e0L

.field public static final FADEOUT_MODE_LONG:I = 0x1

.field public static final FADEOUT_MODE_NONE:I = 0x2

.field public static final FADEOUT_MODE_NORMAL:I = 0x0

.field public static final INVALIDE_SESSION_ID:I = -0x1

.field public static final INVALID_NEXT_ID:I = 0x0

.field public static final INVALID_TEMP_FILE_ID:I = 0x0

.field private static final MIN_BYTE_PER_SEC:I = 0x800

.field private static final ONLINE_MIN_SIZE:I = 0x100000

.field private static final PLAYER_CACHE_MSEC:I = 0x2710

.field private static final PLAYER_THRESHOLD_BYTES:I = 0x80000

.field private static final STATUS_BUFFER_IN_PROCESS:I = 0x1

.field private static final STATUS_BUFFER_SUCCESS:I = 0x2

.field private static final STATUS_DOWNLOAD_COMPLETED:I = 0x4

.field private static final STATUS_ERROR:I = 0x3

.field private static final STATUS_IDLE:I = 0x0

.field static final TAG:Ljava/lang/String; = null

.field private static final TEMP_FILE_ID_ARR:[I = null

.field public static final TEMP_MEDIA_NAME:Ljava/lang/String; = ".CURRENT_MIUI%d.mp3.tmp"

.field private static final TIME_OUT_FOR_DELETE_FILE:J = 0x1388L

.field public static final TOGGLE_PAUSE:I = 0x1

.field public static final TOGGLE_PLAY:I = 0x2

.field private static final VOLUME_FADEIN_DEGREE:F = 0.01f

.field private static final VOLUME_FADEOUT_DEGREE:F = 0.03f

.field private static final VOLUME_FADEOUT_DEGREE_LONG:F = 0.001f

.field private static final VOLUME_FADEOUT_INTERVAL_LONG:I = 0xa

.field private static final VOLUME_FADE_INTERVAL:I = 0xa

.field private static final WAIT_LOOP_TIMES:I = 0x3c

.field private static sFadeOutMode:I

.field static final sNextDownloadLock:Ljava/lang/Object;

.field private static sVolume:F


# instance fields
.field mBitrate:I

.field final mBufferLock:Ljava/lang/Object;

.field mContext:Landroid/content/Context;

.field mCurrentBytes:J

.field mCurrentFile:Ljava/io/File;

.field mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

.field mDownloadObserver:Landroid/database/ContentObserver;

.field mDownloadingUri:Landroid/net/Uri;

.field mInterrupt:Z

.field mIsBlocking:Z

.field private mIsFirst:Z

.field final mListenerLock:Ljava/lang/Object;

.field mListenerThread:Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;

.field private mNextMediaId:J

.field final mPlayer:Lcom/miui/player/service/PlayerProxy;

.field private mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

.field mRemoteMediaInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

.field final mRunnableList:Lcom/miui/player/service/RunnableList;

.field mStatus:I

.field final mTempDir:Ljava/lang/String;

.field private mTempId:I

.field private mTogglePause:I

.field mTotalBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    .line 97
    const v0, 0x3c23d70a

    sput v0, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    .line 98
    const/4 v0, 0x0

    sput v0, Lcom/miui/player/service/BufferedMediaPlayer;->sFadeOutMode:I

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/player/service/BufferedMediaPlayer;->sNextDownloadLock:Ljava/lang/Object;

    return-void

    .line 55
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/miui/player/service/RunnableList;)V
    .locals 3
    .parameter "runnableList"

    .prologue
    const-wide/16 v1, 0x0

    .line 140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mBufferLock:Ljava/lang/Object;

    .line 128
    iput-wide v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    .line 129
    iput-wide v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentBytes:J

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mBitrate:I

    .line 141
    iput-object p1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRunnableList:Lcom/miui/player/service/RunnableList;

    .line 142
    sget-object v0, Lcom/miui/player/meta/MetaManager;->MIUI_MP3_DOWNLOAD_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    .line 143
    new-instance v0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRunnableList:Lcom/miui/player/service/RunnableList;

    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;-><init>(Lcom/miui/player/service/RunnableList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    .line 144
    new-instance v0, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-direct {v0, p0}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;-><init>(Lcom/miui/player/service/BufferedMediaPlayer;)V

    iput-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    .line 145
    return-void
.end method

.method private static assertId(I)V
    .locals 7
    .parameter "id"

    .prologue
    .line 1015
    sget-object v0, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 1016
    .local v1, i:I
    if-ne v1, p0, :cond_0

    .line 1017
    return-void

    .line 1015
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1020
    .end local v1           #i:I
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad temp file id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static copyFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "srcFile"
    .parameter "dstName"

    .prologue
    .line 992
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 993
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 994
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 997
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/xiaomi/common/file/FileOperations;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 998
    return-object v0
.end method

.method static deleteRecordAndFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/service/RunnableList;)V
    .locals 9
    .parameter "context"
    .parameter "appointName"
    .parameter "dir"
    .parameter "runnableList"

    .prologue
    .line 969
    const-string v2, "title=?"

    .line 970
    .local v2, where:Ljava/lang/String;
    sget-object v3, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    invoke-interface {p3, v3}, Lcom/miui/player/service/RunnableList;->remove(Ljava/lang/String;)V

    .line 971
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 972
    .local v0, filePath:Ljava/lang/String;
    sget-object v4, Lcom/miui/player/service/BufferedMediaPlayer;->sNextDownloadLock:Ljava/lang/Object;

    monitor-enter v4

    .line 973
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/miui/player/network/DownloadProvider;->DOWNLOAD_URI:Landroid/net/Uri;

    const-string v6, "title=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 978
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 981
    .local v1, nextFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 982
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 984
    :cond_0
    return-void

    .line 978
    .end local v1           #nextFile:Ljava/io/File;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private downloadAndPrepare()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x3

    .line 328
    const/4 v3, 0x0

    .line 331
    .local v3, isSuccess:Z
    iput v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mBitrate:I

    .line 332
    iput-wide v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    .line 333
    iput-wide v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentBytes:J

    .line 334
    iput v8, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 335
    iput-boolean v8, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    .line 336
    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->runOnBlockingChanged()V

    .line 338
    iget-object v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-static {v5, v6, v8, v7}, Lcom/miui/player/network/DownloadProvider;->registerDownloadObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 339
    iput v9, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 389
    :goto_0
    return v4

    .line 345
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v5, 0x3c

    if-lt v2, v5, :cond_1

    iget-wide v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentBytes:J

    int-to-long v7, v2

    div-long/2addr v5, v7

    const-wide/16 v7, 0x800

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 346
    :cond_1
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 347
    iget v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 348
    :cond_2
    iget-object v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    iget v6, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempId:I

    invoke-static {v6}, Lcom/miui/player/service/BufferedMediaPlayer;->getTempFileName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/player/service/BufferedMediaPlayer;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 349
    .local v1, f:Ljava/io/File;
    if-eqz v1, :cond_4

    .line 351
    :try_start_0
    iget-wide v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    invoke-direct {p0, v1, v5, v6}, Lcom/miui/player/service/BufferedMediaPlayer;->ensureFileSpace(Ljava/io/File;J)V

    .line 352
    iget-object v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/miui/player/service/PlayerProxy;->setDataSourceAndPrepare(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_2
    iget v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    if-eq v5, v9, :cond_5

    .line 358
    iput-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;

    .line 359
    iput-boolean v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    .line 360
    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->runOnBlockingChanged()V

    .line 361
    new-instance v4, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;

    invoke-direct {v4, p0}, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;-><init>(Lcom/miui/player/service/BufferedMediaPlayer;)V

    iput-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerThread:Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;

    .line 362
    iget-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerThread:Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;

    invoke-virtual {v4}, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->start()V

    .line 363
    const/4 v3, 0x1

    .line 378
    .end local v1           #f:Ljava/io/File;
    :cond_3
    if-nez v3, :cond_6

    .line 379
    iput v9, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 381
    iget-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-static {v4, v5}, Lcom/miui/player/network/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 382
    iget-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    iget-boolean v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mInterrupt:Z

    if-eqz v4, :cond_6

    .line 385
    new-instance v4, Ljava/lang/InterruptedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " user interrupt prepare"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 353
    .restart local v1       #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/Exception;
    iput v9, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    goto :goto_2

    .line 368
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    iput v9, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 372
    .end local v1           #f:Ljava/io/File;
    :cond_5
    iget v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    if-eq v5, v9, :cond_3

    iget-boolean v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mInterrupt:Z

    if-nez v5, :cond_3

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    move v4, v3

    .line 389
    goto/16 :goto_0
.end method

.method private ensureFileSpace(Ljava/io/File;J)V
    .locals 3
    .parameter "f"
    .parameter "space"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-gez v1, :cond_0

    .line 649
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 650
    .local v0, raf:Ljava/io/RandomAccessFile;
    iget-wide v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 652
    .end local v0           #raf:Ljava/io/RandomAccessFile;
    :cond_0
    return-void
.end method

.method private fadeIn()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x3f80

    .line 478
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/player/service/BufferedMediaPlayer;->isFadeEffectActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-virtual {v1, v3, v4}, Lcom/miui/player/service/PlayerProxy;->setVolume(FF)V

    .line 481
    monitor-exit v2

    .line 509
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v1}, Lcom/miui/player/service/PlayerProxy;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 485
    monitor-exit v2

    goto :goto_0

    .line 508
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 488
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    sget v3, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    sget v4, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    invoke-virtual {v1, v3, v4}, Lcom/miui/player/service/PlayerProxy;->setVolume(FF)V

    .line 489
    const/4 v1, 0x2

    iput v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTogglePause:I

    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, togglePause:Z
    :goto_1
    sget v1, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_2

    .line 492
    iget v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTogglePause:I

    if-eq v1, v6, :cond_4

    .line 493
    const/4 v0, 0x1

    .line 504
    :cond_2
    if-nez v0, :cond_3

    .line 505
    const/high16 v1, 0x3f80

    sput v1, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    .line 506
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    sget v3, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    sget v4, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    invoke-virtual {v1, v3, v4}, Lcom/miui/player/service/PlayerProxy;->setVolume(FF)V

    .line 508
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 496
    :cond_4
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    sget v3, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    sget v4, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    invoke-virtual {v1, v3, v4}, Lcom/miui/player/service/PlayerProxy;->setVolume(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    const-wide/16 v3, 0xa

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 501
    :goto_2
    :try_start_3
    sget v1, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    const v3, 0x3c23d70a

    add-float/2addr v1, v3

    sput v1, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 499
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private fadeOut()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 512
    iget-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 513
    :try_start_0
    sget v3, Lcom/miui/player/service/BufferedMediaPlayer;->sFadeOutMode:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 514
    const/4 v3, 0x0

    sput v3, Lcom/miui/player/service/BufferedMediaPlayer;->sFadeOutMode:I

    .line 515
    monitor-exit v4

    .line 556
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/player/service/BufferedMediaPlayer;->isFadeEffectActive(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 519
    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    invoke-virtual {v3, v5, v6}, Lcom/miui/player/service/PlayerProxy;->setVolume(FF)V

    .line 520
    monitor-exit v4

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 523
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v3}, Lcom/miui/player/service/PlayerProxy;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_2

    .line 524
    monitor-exit v4

    goto :goto_0

    .line 527
    :cond_2
    const/4 v3, 0x1

    iput v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTogglePause:I

    .line 528
    const/4 v2, 0x0

    .line 529
    .local v2, togglePause:Z
    const v0, 0x3cf5c28f

    .line 530
    .local v0, degree:F
    const/16 v1, 0xa

    .line 531
    .local v1, interval:I
    sget v3, Lcom/miui/player/service/BufferedMediaPlayer;->sFadeOutMode:I

    if-ne v3, v7, :cond_3

    .line 532
    const/4 v3, 0x0

    sput v3, Lcom/miui/player/service/BufferedMediaPlayer;->sFadeOutMode:I

    .line 533
    const v0, 0x3a83126f

    .line 534
    const/16 v1, 0xa

    .line 537
    :cond_3
    :goto_1
    sget v3, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    .line 538
    iget v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTogglePause:I

    if-eq v3, v7, :cond_6

    .line 539
    const/4 v2, 0x1

    .line 550
    :cond_4
    if-nez v2, :cond_5

    .line 551
    const v3, 0x3c23d70a

    sput v3, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    .line 552
    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    sget v5, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    sget v6, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    invoke-virtual {v3, v5, v6}, Lcom/miui/player/service/PlayerProxy;->setVolume(FF)V

    .line 555
    :cond_5
    monitor-exit v4

    goto :goto_0

    .line 542
    :cond_6
    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    sget v5, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    sget v6, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    invoke-virtual {v3, v5, v6}, Lcom/miui/player/service/PlayerProxy;->setVolume(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    int-to-long v5, v1

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 547
    :goto_2
    :try_start_3
    sget v3, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    sub-float/2addr v3, v0

    sput v3, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 545
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public static getDefaultTempId()I
    .locals 2

    .prologue
    .line 1049
    sget-object v0, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private static getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 320
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    .end local v0           #file:Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0       #file:Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLongFadeOutTime()J
    .locals 2

    .prologue
    .line 559
    const-wide/16 v0, 0x2706

    return-wide v0
.end method

.method private static getTempFileName(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 1035
    invoke-static {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->assertId(I)V

    .line 1036
    const-string v0, ".CURRENT_MIUI%d.mp3.tmp"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTempFileNameArr()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1040
    sget-object v2, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 1041
    .local v1, ret:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1042
    sget-object v2, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/miui/player/service/BufferedMediaPlayer;->getTempFileName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1041
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1045
    :cond_0
    return-object v1
.end method

.method private static isFadeEffectActive(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 1007
    if-eqz p0, :cond_0

    .line 1008
    const-string v1, "fade_effect_active"

    invoke-static {p0, v1}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/miui/player/util/PreferenceCache;->IS_LPA_DECODE:Z

    if-nez v1, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return v0

    .line 1008
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isRemoveAfterPlay(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1002
    const-string v0, "play_and_download"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/player/util/Utils;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isTempFileName(Ljava/lang/String;)Z
    .locals 3
    .parameter "fileName"

    .prologue
    .line 1024
    invoke-static {}, Lcom/miui/player/service/BufferedMediaPlayer;->getTempFileNameArr()[Ljava/lang/String;

    move-result-object v1

    .line 1025
    .local v1, tempArr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1026
    aget-object v2, v1, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1027
    const/4 v2, 0x1

    .line 1031
    :goto_1
    return v2

    .line 1025
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1031
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private resetMediaInfo(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 664
    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->getNextId()I

    move-result v0

    invoke-static {v0}, Lcom/miui/player/service/BufferedMediaPlayer;->getTempFileName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRunnableList:Lcom/miui/player/service/RunnableList;

    invoke-static {p1, v0, v1, v2}, Lcom/miui/player/service/BufferedMediaPlayer;->deleteRecordAndFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/service/RunnableList;)V

    .line 666
    iput-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteMediaInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    .line 667
    iput-wide v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mNextMediaId:J

    .line 668
    iput-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    .line 669
    iput-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;

    .line 670
    iput v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 671
    iput-wide v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    .line 672
    iput-wide v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentBytes:J

    .line 673
    iput v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mBitrate:I

    .line 675
    iput-boolean v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    .line 676
    iput-boolean v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mInterrupt:Z

    .line 678
    iput-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerThread:Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;

    .line 679
    return-void
.end method

.method public static setUp(Lcom/miui/player/service/RunnableList;)V
    .locals 1
    .parameter "runnableList"

    .prologue
    .line 1059
    sget-object v0, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/miui/player/service/RunnableList;->remove(Ljava/lang/String;)V

    .line 1060
    return-void
.end method

.method public static toggleFadeOutMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1063
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    .line 1064
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad mode for fade out mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1067
    :cond_1
    sput p0, Lcom/miui/player/service/BufferedMediaPlayer;->sFadeOutMode:I

    .line 1068
    return-void
.end method


# virtual methods
.method public cancelPrepare(Z)V
    .locals 2
    .parameter "abort"

    .prologue
    .line 614
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mNextMediaId:J

    .line 615
    if-eqz p1, :cond_0

    .line 616
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->abort()V

    .line 620
    :goto_0
    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->detach()V

    goto :goto_0
.end method

.method changeDataSource(Ljava/io/File;I)V
    .locals 6
    .parameter "dst"
    .parameter "msec"

    .prologue
    .line 623
    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 625
    :try_start_0
    iget-wide v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    invoke-direct {p0, p1, v4, v5}, Lcom/miui/player/service/BufferedMediaPlayer;->ensureFileSpace(Ljava/io/File;J)V

    .line 627
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v2}, Lcom/miui/player/service/PlayerProxy;->isPlaying()Z

    move-result v0

    .line 628
    .local v0, isPlaying:Z
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v2}, Lcom/miui/player/service/PlayerProxy;->getCurrentPosition()I

    move-result v1

    .line 629
    .local v1, pos:I
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v2}, Lcom/miui/player/service/PlayerProxy;->reset()V

    .line 630
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    iget-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/miui/player/service/PlayerProxy;->setDataSourceAndPrepare(Landroid/content/Context;Landroid/net/Uri;)V

    .line 631
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v2}, Lcom/miui/player/service/PlayerProxy;->getDuration()I

    move-result v2

    if-lt v2, p2, :cond_1

    .line 632
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v2, p2}, Lcom/miui/player/service/PlayerProxy;->seekTo(I)V

    .line 636
    :goto_0
    if-eqz v0, :cond_0

    .line 637
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v2}, Lcom/miui/player/service/PlayerProxy;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 644
    .end local v0           #isPlaying:Z
    .end local v1           #pos:I
    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    return-void

    .line 634
    .restart local v0       #isPlaying:Z
    .restart local v1       #pos:I
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v2, v1}, Lcom/miui/player/service/PlayerProxy;->seekTo(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 639
    .end local v0           #isPlaying:Z
    .end local v1           #pos:I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 644
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 642
    :catch_1
    move-exception v2

    goto :goto_1

    .line 641
    :catch_2
    move-exception v2

    goto :goto_1

    .line 640
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method deleteDownloadRecord(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "appointName"

    .prologue
    .line 965
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v0}, Lcom/miui/player/service/PlayerProxy;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getBufferdPercent()F
    .locals 5

    .prologue
    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, per:F
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 419
    const/high16 v0, 0x3f80

    .line 424
    :cond_0
    :goto_0
    return v0

    .line 420
    :cond_1
    iget-wide v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 421
    iget-wide v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentBytes:J

    long-to-float v1, v1

    iget-wide v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    long-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v0}, Lcom/miui/player/service/PlayerProxy;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 413
    :goto_0
    return v0

    .line 410
    :catch_0
    move-exception v0

    .line 413
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 428
    const/4 v0, 0x1

    .line 429
    .local v0, duration:I
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 431
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v1}, Lcom/miui/player/service/PlayerProxy;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 436
    :cond_1
    :goto_0
    return v0

    .line 432
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getNextId()I
    .locals 3

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 156
    iget v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempId:I

    sget-object v2, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_2

    .line 161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 162
    sget-object v1, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 163
    const/4 v0, 0x0

    .line 166
    :cond_1
    sget-object v1, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    aget v1, v1, v0

    return v1

    .line 155
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method hasBuffered(I)Z
    .locals 5
    .parameter "msec"

    .prologue
    const/4 v0, 0x1

    .line 655
    iget v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mBitrate:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 656
    iget-wide v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentBytes:J

    iget-wide v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->getBufferdPercent()F

    move-result v1

    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, p1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 660
    :cond_1
    :goto_0
    return v0

    .line 656
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mInterrupt:Z

    .line 401
    return-void
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v0}, Lcom/miui/player/service/PlayerProxy;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreparing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 393
    iget v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method needPrepare()Z
    .locals 4

    .prologue
    .line 987
    iget-wide v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mNextMediaId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->needDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 563
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 564
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    .line 565
    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->runOnBlockingChanged()V

    .line 566
    invoke-direct {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->fadeOut()V

    .line 567
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v0}, Lcom/miui/player/service/PlayerProxy;->pause()V

    .line 568
    monitor-exit v1

    .line 569
    return-void

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public prepareDirectly(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;Landroid/net/Uri;J)V
    .locals 6
    .parameter "context"
    .parameter "remoteControlInfo"
    .parameter "uri"
    .parameter "nextMediaId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/miui/player/service/BufferedMediaPlayer;->resetMediaInfo(Landroid/content/Context;)V

    .line 176
    iput-object p2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    .line 177
    iput-wide p4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mNextMediaId:J

    .line 178
    iput-object p1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    .line 180
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v2, p2, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->getNextId()I

    move-result v1

    invoke-static {v1}, Lcom/miui/player/service/BufferedMediaPlayer;->getTempFileName(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->initialize(Landroid/content/Context;Landroid/os/Handler;JLjava/lang/String;)V

    .line 185
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 193
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v0, p1, p3}, Lcom/miui/player/service/PlayerProxy;->setDataSourceAndPrepare(Landroid/content/Context;Landroid/net/Uri;)V

    .line 195
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 196
    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->needPrepare()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRunnableList:Lcom/miui/player/service/RunnableList;

    sget-object v1, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    const-wide/16 v3, 0x1388

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/miui/player/service/RunnableList;->add(Ljava/lang/String;Lcom/miui/player/service/RunnableList$RemovableRunnable;J)V

    .line 199
    :cond_1
    return-void
.end method

.method public prepareWithBuffer(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;J)V
    .locals 24
    .parameter "context"
    .parameter "remoteControlInfo"
    .parameter "remoteMediaInfo"
    .parameter "nextMediaId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 209
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 211
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  prepareRemote  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 214
    :cond_1
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    .line 215
    .local v13, appointName:Ljava/lang/String;
    const-string v3, "mp3"

    invoke-static {v13, v3}, Lcom/miui/player/meta/MetaManager;->getMetaFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    .line 216
    .local v20, localMedia:Ljava/io/File;
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/miui/player/network/DownloadProvider;->queryRunning(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 219
    .local v23, uri:Landroid/net/Uri;
    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v23, :cond_3

    .line 220
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/miui/player/service/BufferedMediaPlayer;->prepareDirectly(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;Landroid/net/Uri;J)V

    .line 221
    sget-object v3, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "track has been downloaded completed, local play !"

    invoke-static {v3, v4}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    :cond_2
    :goto_0
    return-void

    .line 225
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempId:I

    invoke-static {v3}, Lcom/miui/player/service/BufferedMediaPlayer;->getTempFileName(I)Ljava/lang/String;

    move-result-object v21

    .line 227
    .local v21, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mIsFirst:Z

    if-nez v3, :cond_9

    .line 229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/miui/player/service/BufferedMediaPlayer;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    .line 230
    if-eqz v20, :cond_4

    .line 231
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/miui/player/network/DownloadProvider;->queryRunning(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 233
    :cond_4
    if-eqz v20, :cond_9

    if-nez v23, :cond_9

    .line 234
    const/16 v22, 0x0

    .line 235
    .local v22, renamed:Z
    invoke-static/range {p1 .. p1}, Lcom/miui/player/service/BufferedMediaPlayer;->isRemoveAfterPlay(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x100000

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    .line 236
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    const-string v4, "mp3"

    invoke-static {v3, v4}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 237
    .local v16, dst:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 238
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/miui/player/service/BufferedMediaPlayer;->copyFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    .line 239
    const/16 v22, 0x1

    .line 241
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/miui/player/service/BufferedMediaPlayer;->deleteDownloadRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    .end local v16           #dst:Ljava/lang/String;
    :cond_6
    :try_start_0
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/miui/player/service/BufferedMediaPlayer;->prepareDirectly(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;Landroid/net/Uri;J)V

    .line 245
    if-eqz v22, :cond_7

    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/miui/player/service/BufferedMediaPlayer;->runOnDownloadCompleted(Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;)V

    .line 249
    :cond_7
    sget-object v3, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "track has been prepared success, local play"

    invoke-static {v3, v4}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v17

    .line 252
    .local v17, e:Ljava/lang/Exception;
    if-eqz v22, :cond_8

    .line 253
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    .line 256
    :cond_8
    const/16 v20, 0x0

    .line 261
    .end local v17           #e:Ljava/lang/Exception;
    .end local v22           #renamed:Z
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/miui/player/service/BufferedMediaPlayer;->resetMediaInfo(Landroid/content/Context;)V

    .line 262
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    .line 264
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/miui/player/network/MP3Downloader;->requestCandidateUrls(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 265
    .local v14, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v14, :cond_a

    .line 266
    new-instance v3, Ljava/io/IOException;

    const-string v4, "online play failed ! maybe no candidate exists"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 269
    :cond_a
    move-object/from16 v0, p3

    iput-object v14, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mCandidateUrls:Ljava/util/ArrayList;

    .line 270
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteMediaInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    .line 271
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    .line 272
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/player/service/BufferedMediaPlayer;->mNextMediaId:J

    .line 273
    new-instance v3, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;-><init>(Lcom/miui/player/service/BufferedMediaPlayer;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/service/BufferedMediaPlayer;->getNextId()I

    move-result v4

    invoke-static {v4}, Lcom/miui/player/service/BufferedMediaPlayer;->getTempFileName(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p1

    move-wide/from16 v6, p4

    invoke-virtual/range {v3 .. v8}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->initialize(Landroid/content/Context;Landroid/os/Handler;JLjava/lang/String;)V

    .line 277
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 278
    .local v19, len:I
    const/4 v15, 0x0

    .line 279
    .local v15, currentTryIdx:I
    const/16 v18, 0x0

    .line 281
    .local v18, isSuccess:Z
    if-eqz v23, :cond_d

    .line 282
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    .line 283
    sget-object v3, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "track is preparing"

    invoke-static {v3, v4}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    if-eqz v3, :cond_b

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/miui/player/service/BufferedMediaPlayer;->downloadAndPrepare()Z

    move-result v18

    .line 300
    :cond_b
    add-int/lit8 v15, v15, 0x1

    :goto_2
    move/from16 v0, v19

    if-ge v15, v0, :cond_f

    if-nez v18, :cond_f

    .line 301
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteMediaInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    iget-object v6, v3, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mDetails:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x1388

    move-object/from16 v3, p1

    move-object/from16 v5, v21

    move-object/from16 v7, v21

    invoke-static/range {v3 .. v12}, Lcom/miui/player/network/DownloadProvider;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZJ)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    if-eqz v3, :cond_c

    .line 305
    invoke-direct/range {p0 .. p0}, Lcom/miui/player/service/BufferedMediaPlayer;->downloadAndPrepare()Z

    move-result v18

    .line 300
    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 285
    :cond_d
    :goto_3
    move/from16 v0, v19

    if-ge v15, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    if-nez v3, :cond_e

    .line 287
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteMediaInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    iget-object v6, v3, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mDetails:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x1388

    move-object/from16 v3, p1

    move-object/from16 v5, v21

    move-object/from16 v7, v21

    invoke-static/range {v3 .. v12}, Lcom/miui/player/network/DownloadProvider;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZJ)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    .line 285
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 292
    :cond_e
    sget-object v3, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    const-string v4, "track isnot prepared"

    invoke-static {v3, v4}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 309
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    if-nez v3, :cond_10

    .line 310
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 313
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 314
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " download remote media failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public release(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "stopNextDownload"

    .prologue
    .line 598
    invoke-virtual {p0, p2}, Lcom/miui/player/service/BufferedMediaPlayer;->reset(Z)V

    .line 599
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v2}, Lcom/miui/player/service/PlayerProxy;->getAudioSessionId()I

    move-result v1

    .line 600
    .local v1, id:I
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v2}, Lcom/miui/player/service/PlayerProxy;->release()V

    .line 601
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 602
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    .local v0, i:Landroid/content/Intent;
    const-string v2, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    const-string v2, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 607
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 4
    .parameter "stopNextDownload"

    .prologue
    const/4 v2, 0x0

    .line 575
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 576
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 577
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/miui/player/network/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 580
    iput-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 585
    iput-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    .line 587
    :cond_1
    invoke-direct {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->fadeOut()V

    .line 588
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v0}, Lcom/miui/player/service/PlayerProxy;->reset()V

    .line 590
    if-eqz p1, :cond_2

    iget-wide v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mNextMediaId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 591
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/service/BufferedMediaPlayer;->cancelPrepare(Z)V

    .line 595
    :goto_0
    return-void

    .line 577
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 593
    :cond_2
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->detach()V

    goto :goto_0
.end method

.method runOnBlockingChanged()V
    .locals 3

    .prologue
    .line 750
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    if-nez v1, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v0, v1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mBlockingChangedListener:Lcom/miui/player/service/BufferedMediaPlayer$OnBlockingChangedListener;

    .line 754
    .local v0, l:Lcom/miui/player/service/BufferedMediaPlayer$OnBlockingChangedListener;
    if-eqz v0, :cond_0

    .line 755
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v1, v1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/player/service/BufferedMediaPlayer$2;

    invoke-direct {v2, p0, v0}, Lcom/miui/player/service/BufferedMediaPlayer$2;-><init>(Lcom/miui/player/service/BufferedMediaPlayer;Lcom/miui/player/service/BufferedMediaPlayer$OnBlockingChangedListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method runOnBufferedPositionChanged(F)V
    .locals 3
    .parameter "bufferedPer"

    .prologue
    .line 767
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    if-nez v1, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v0, v1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mBufferedPositionChangedListener:Lcom/miui/player/service/BufferedMediaPlayer$OnBufferedPositionChangedListener;

    .line 771
    .local v0, l:Lcom/miui/player/service/BufferedMediaPlayer$OnBufferedPositionChangedListener;
    if-eqz v0, :cond_0

    .line 772
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v1, v1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/player/service/BufferedMediaPlayer$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/player/service/BufferedMediaPlayer$3;-><init>(Lcom/miui/player/service/BufferedMediaPlayer;Lcom/miui/player/service/BufferedMediaPlayer$OnBufferedPositionChangedListener;F)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method runOnDownloadCompleted(Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;)V
    .locals 7
    .parameter "mediaInfo"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v2, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mDownloadCompletedListener:Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;

    .line 731
    .local v2, l:Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;
    iget-object v3, p1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    .line 732
    .local v3, id:Ljava/lang/String;
    iget-object v4, p1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    .line 733
    .local v4, appointName:Ljava/lang/String;
    iget-object v5, p1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mDetails:Ljava/lang/String;

    .line 734
    .local v5, details:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v6, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/player/service/BufferedMediaPlayer$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/service/BufferedMediaPlayer$1;-><init>(Lcom/miui/player/service/BufferedMediaPlayer;Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 2
    .parameter "msec"

    .prologue
    .line 456
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 457
    add-int/lit16 v0, p1, 0x2710

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/miui/player/service/BufferedMediaPlayer;->hasBuffered(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v0, p1}, Lcom/miui/player/service/PlayerProxy;->seekTo(I)V

    .line 460
    :cond_0
    monitor-exit v1

    .line 461
    return-void

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAudioStreamType(I)V
    .locals 1
    .parameter "streamtype"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v0, p1}, Lcom/miui/player/service/PlayerProxy;->setAudioStreamType(I)V

    .line 611
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v0, p1}, Lcom/miui/player/service/PlayerProxy;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 449
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v0, p1}, Lcom/miui/player/service/PlayerProxy;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 453
    return-void
.end method

.method public setTempId(IZ)V
    .locals 0
    .parameter "id"
    .parameter "isFirst"

    .prologue
    .line 148
    invoke-static {p1}, Lcom/miui/player/service/BufferedMediaPlayer;->assertId(I)V

    .line 149
    iput p1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempId:I

    .line 150
    iput-boolean p2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mIsFirst:Z

    .line 151
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 464
    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 466
    :try_start_0
    iget-boolean v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    if-nez v2, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->getCurrentPosition()I

    move-result v2

    add-int/lit16 v1, v2, 0x2710

    .line 468
    .local v1, newPos:I
    invoke-virtual {p0, v1}, Lcom/miui/player/service/BufferedMediaPlayer;->hasBuffered(I)Z

    move-result v0

    .line 469
    .local v0, isBuffered:Z
    if-eqz v0, :cond_0

    .line 470
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v2}, Lcom/miui/player/service/PlayerProxy;->start()V

    .line 471
    invoke-direct {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->fadeIn()V

    .line 474
    .end local v0           #isBuffered:Z
    .end local v1           #newPos:I
    :cond_0
    monitor-exit v3

    .line 475
    return-void

    .line 474
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public togglePause(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 404
    iput p1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTogglePause:I

    .line 405
    return-void
.end method
