.class public Lcom/miui/player/meta/AlbumManager;
.super Ljava/lang/Object;
.source "AlbumManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;,
        Lcom/miui/player/meta/AlbumManager$FileBitmapDecoder;,
        Lcom/miui/player/meta/AlbumManager$FastBitmapDrawable;,
        Lcom/miui/player/meta/AlbumManager$BitmapDecoder;
    }
.end annotation


# static fields
.field private static BITMAP_OPT_ARGB_8888:Landroid/graphics/BitmapFactory$Options;

.field private static final sArtworkUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/miui/player/meta/AlbumManager;->BITMAP_OPT_ARGB_8888:Landroid/graphics/BitmapFactory$Options;

    .line 31
    sget-object v0, Lcom/miui/player/meta/AlbumManager;->BITMAP_OPT_ARGB_8888:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 32
    sget-object v0, Lcom/miui/player/meta/AlbumManager;->BITMAP_OPT_ARGB_8888:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 314
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/player/meta/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 346
    return-void
.end method

.method public static getAlbumBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "context"
    .parameter "uri"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 477
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 478
    .local v2, res:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 479
    const/4 v1, 0x0

    .line 481
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v3, "r"

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 482
    new-instance v0, Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;-><init>(Ljava/io/FileDescriptor;)V

    .line 485
    .local v0, decoder:Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v0, p2, p3, v3}, Lcom/miui/player/meta/AlbumManager;->getCompressBitmap(Lcom/miui/player/meta/AlbumManager$BitmapDecoder;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 489
    if-eqz v1, :cond_0

    .line 490
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 496
    .end local v0           #decoder:Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return-object v3

    .line 486
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v3

    .line 489
    if-eqz v1, :cond_1

    .line 490
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 496
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 488
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    .line 489
    if-eqz v1, :cond_2

    .line 490
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 493
    :cond_2
    :goto_2
    throw v3

    .line 492
    .restart local v0       #decoder:Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v0           #decoder:Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;
    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method private static getArtwork(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "song_id"
    .parameter "album_id"

    .prologue
    const/4 v0, 0x0

    .line 83
    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-gez v5, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :cond_1
    const/4 v0, 0x0

    .line 89
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 90
    .local v3, res:Landroid/content/ContentResolver;
    sget-object v5, Lcom/miui/player/meta/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 91
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 92
    const/4 v2, 0x0

    .line 94
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 95
    const/4 v5, 0x0

    sget-object v6, Lcom/miui/player/meta/AlbumManager;->BITMAP_OPT_ARGB_8888:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 109
    if-eqz v2, :cond_0

    .line 110
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v5

    goto :goto_0

    .line 96
    :catch_1
    move-exception v1

    .line 100
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/player/meta/AlbumManager;->getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-nez v5, :cond_2

    .line 102
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 109
    :cond_2
    if-eqz v2, :cond_0

    .line 110
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 112
    :catch_2
    move-exception v5

    goto :goto_0

    .line 105
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    .line 109
    if-eqz v2, :cond_0

    .line 110
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 112
    :catch_4
    move-exception v5

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v5

    .line 109
    if-eqz v2, :cond_3

    .line 110
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 113
    :cond_3
    :goto_1
    throw v5

    .line 112
    :catch_5
    move-exception v6

    goto :goto_1
.end method

.method private static getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "songid"
    .parameter "albumid"

    .prologue
    const-wide/16 v5, 0x0

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, bm:Landroid/graphics/Bitmap;
    cmp-long v4, p3, v5

    if-gez v4, :cond_0

    cmp-long v4, p1, v5

    if-gez v4, :cond_0

    .line 149
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Must specify an album or a song id"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 153
    :cond_0
    cmp-long v4, p3, v5

    if-ltz v4, :cond_1

    .line 154
    :try_start_0
    sget-object v4, Lcom/miui/player/meta/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v4, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 155
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 157
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    .line 158
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 159
    .local v1, fd:Ljava/io/FileDescriptor;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-object v0

    .line 164
    :catch_0
    move-exception v4

    goto :goto_0

    .line 162
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private static getArtworkFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 130
    invoke-static {p0, p1}, Lcom/miui/player/meta/AlbumManager;->isValidAlbumInfo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    .line 134
    :cond_0
    const-string v2, "album"

    invoke-static {p0, p1, v2}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, filePath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 137
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v2, Lcom/miui/player/meta/AlbumManager;->BITMAP_OPT_ARGB_8888:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static getArtworkFromFileUri(Landroid/content/Context;JJ)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "songid"
    .parameter "albumid"

    .prologue
    const-wide/16 v6, 0x0

    .line 446
    const/4 v3, 0x0

    .line 447
    .local v3, ret:Landroid/net/Uri;
    cmp-long v5, p3, v6

    if-gez v5, :cond_0

    cmp-long v5, p1, v6

    if-gez v5, :cond_0

    .line 448
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Must specify an album or a song id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 452
    :cond_0
    cmp-long v5, p3, v6

    if-ltz v5, :cond_1

    .line 453
    :try_start_0
    sget-object v5, Lcom/miui/player/meta/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 454
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 456
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    .line 457
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 458
    .local v1, fd:Ljava/io/FileDescriptor;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 459
    .local v0, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 460
    const/4 v5, 0x0

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 461
    const/4 v5, 0x0

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 462
    const/4 v5, 0x0

    invoke-static {v1, v5, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 463
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v5, :cond_1

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v5, :cond_1

    .line 464
    move-object v3, v4

    .line 473
    .end local v0           #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-object v3

    .line 469
    :catch_0
    move-exception v5

    goto :goto_0

    .line 468
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static getArtworkQuick(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "albumId"
    .parameter "album"
    .parameter "artist"
    .parameter "fromDB"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 531
    const/4 v6, 0x0

    .line 533
    .local v6, b:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 534
    .local v5, opt:Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 535
    const/4 v0, 0x0

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 537
    if-eqz p5, :cond_0

    const-string v0, "android_album"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-wide v1, p1

    move v3, p6

    move v4, p7

    .line 538
    invoke-static/range {v0 .. v5}, Lcom/miui/player/meta/AlbumManager;->getArtworkQuickFromDB(Landroid/content/Context;JIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 540
    :cond_0
    if-nez v6, :cond_1

    .line 541
    invoke-static {p3, p4, p6, p7, v5}, Lcom/miui/player/meta/AlbumManager;->getArtworkQuickFromFile(Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 544
    :cond_1
    if-eqz v6, :cond_2

    new-instance v0, Lcom/miui/player/meta/AlbumManager$FastBitmapDrawable;

    invoke-direct {v0, v6}, Lcom/miui/player/meta/AlbumManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getArtworkQuickFromDB(Landroid/content/Context;JIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "albumId"
    .parameter "w"
    .parameter "h"
    .parameter "opt"

    .prologue
    const/4 v4, 0x0

    .line 320
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-gez v5, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-object v4

    .line 323
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 324
    .local v2, res:Landroid/content/ContentResolver;
    sget-object v5, Lcom/miui/player/meta/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 325
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 326
    const/4 v1, 0x0

    .line 328
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v5, "r"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 329
    new-instance v0, Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;-><init>(Ljava/io/FileDescriptor;)V

    .line 332
    .local v0, decoder:Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;
    invoke-static {v0, p3, p4, p5}, Lcom/miui/player/meta/AlbumManager;->getCompressBitmap(Lcom/miui/player/meta/AlbumManager$BitmapDecoder;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 336
    if-eqz v1, :cond_0

    .line 337
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v5

    goto :goto_0

    .line 333
    .end local v0           #decoder:Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;
    :catch_1
    move-exception v5

    .line 336
    if-eqz v1, :cond_0

    .line 337
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 339
    :catch_2
    move-exception v5

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v4

    .line 336
    if-eqz v1, :cond_2

    .line 337
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 340
    :cond_2
    :goto_1
    throw v4

    .line 339
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method private static getArtworkQuickFromFile(Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "album"
    .parameter "artist"
    .parameter "w"
    .parameter "h"
    .parameter "opt"

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-static {p0, p1}, Lcom/miui/player/meta/AlbumManager;->isValidAlbumInfo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-object v2

    .line 176
    :cond_1
    const-string v3, "album"

    invoke-static {p0, p1, v3}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 178
    new-instance v0, Lcom/miui/player/meta/AlbumManager$FileBitmapDecoder;

    invoke-direct {v0, v1}, Lcom/miui/player/meta/AlbumManager$FileBitmapDecoder;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, decoder:Lcom/miui/player/meta/AlbumManager$FileBitmapDecoder;
    invoke-static {v0, p2, p3, p4}, Lcom/miui/player/meta/AlbumManager;->getCompressBitmap(Lcom/miui/player/meta/AlbumManager$BitmapDecoder;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public static getArtworkStream(Landroid/content/Context;JJ)Ljava/io/InputStream;
    .locals 7
    .parameter "context"
    .parameter "song_id"
    .parameter "album_id"

    .prologue
    .line 190
    const/4 v2, 0x0

    .line 191
    .local v2, ret:Ljava/io/InputStream;
    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-gez v5, :cond_0

    move-object v3, v2

    .line 209
    .end local v2           #ret:Ljava/io/InputStream;
    .local v3, ret:Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 194
    .end local v3           #ret:Ljava/io/InputStream;
    .restart local v2       #ret:Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 195
    .local v1, res:Landroid/content/ContentResolver;
    sget-object v5, Lcom/miui/player/meta/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 196
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_1

    .line 198
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :cond_1
    :goto_1
    move-object v3, v2

    .line 209
    .end local v2           #ret:Ljava/io/InputStream;
    .restart local v3       #ret:Ljava/io/InputStream;
    goto :goto_0

    .line 199
    .end local v3           #ret:Ljava/io/InputStream;
    .restart local v2       #ret:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 203
    .local v0, ex:Ljava/io/FileNotFoundException;
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/player/meta/AlbumManager;->getArtworkStreamFromFileUri(Landroid/content/Context;JJ)Ljava/io/InputStream;

    move-result-object v2

    .line 207
    goto :goto_1

    .line 205
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private static getArtworkStreamFromFileUri(Landroid/content/Context;JJ)Ljava/io/InputStream;
    .locals 8
    .parameter "context"
    .parameter "songid"
    .parameter "albumid"

    .prologue
    const-wide/16 v6, 0x0

    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, ret:Ljava/io/InputStream;
    cmp-long v5, p3, v6

    if-gez v5, :cond_0

    cmp-long v5, p1, v6

    if-gez v5, :cond_0

    .line 215
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Must specify an album or a song id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 219
    :cond_0
    cmp-long v5, p3, v6

    if-ltz v5, :cond_1

    .line 220
    :try_start_0
    sget-object v5, Lcom/miui/player/meta/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 221
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 223
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 225
    .local v0, fd:Ljava/io/FileDescriptor;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #ret:Ljava/io/InputStream;
    .local v3, ret:Ljava/io/InputStream;
    move-object v2, v3

    .line 230
    .end local v0           #fd:Ljava/io/FileDescriptor;
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #ret:Ljava/io/InputStream;
    .end local v4           #uri:Landroid/net/Uri;
    .restart local v2       #ret:Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v2

    .line 228
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static getArtworkUri(Landroid/content/Context;JJ)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "song_id"
    .parameter "album_id"

    .prologue
    const/4 v4, 0x0

    .line 406
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-gez v6, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-object v4

    .line 409
    :cond_1
    const/4 v4, 0x0

    .line 410
    .local v4, ret:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 411
    .local v3, res:Landroid/content/ContentResolver;
    sget-object v6, Lcom/miui/player/meta/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v6, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 412
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 413
    const/4 v2, 0x0

    .line 415
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 416
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 417
    .local v0, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 418
    const/4 v6, 0x0

    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 419
    const/4 v6, 0x0

    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 420
    const/4 v6, 0x0

    invoke-static {v2, v6, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 421
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v6, :cond_2

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    if-lez v6, :cond_2

    .line 422
    move-object v4, v5

    .line 434
    :cond_2
    if-eqz v2, :cond_0

    .line 435
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v6

    goto :goto_0

    .line 424
    .end local v0           #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 428
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/player/meta/AlbumManager;->getArtworkFromFileUri(Landroid/content/Context;JJ)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 434
    if-eqz v2, :cond_0

    .line 435
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 437
    :catch_2
    move-exception v6

    goto :goto_0

    .line 430
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v6

    .line 434
    if-eqz v2, :cond_0

    .line 435
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 437
    :catch_4
    move-exception v6

    goto :goto_0

    .line 433
    :catchall_0
    move-exception v6

    .line 434
    if-eqz v2, :cond_3

    .line 435
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 438
    :cond_3
    :goto_1
    throw v6

    .line 437
    :catch_5
    move-exception v7

    goto :goto_1
.end method

.method private static getCompressBitmap(Lcom/miui/player/meta/AlbumManager$BitmapDecoder;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "decoder"
    .parameter "w"
    .parameter "h"
    .parameter "opt"

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-interface {p0, p1, p2, p3}, Lcom/miui/player/meta/AlbumManager$BitmapDecoder;->decode(IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 272
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-object v1

    .line 276
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 277
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 278
    .local v4, height:I
    int-to-float v1, v3

    int-to-float v2, v4

    div-float v9, v1, v2

    .line 279
    .local v9, radio:F
    int-to-float v1, p1

    int-to-float v2, p2

    div-float v10, v1, v2

    .line 280
    .local v10, scaleRadio:F
    const/4 v8, 0x0

    .line 281
    .local v8, isCut:Z
    sub-float v1, v9, v10

    const v2, 0x3c23d70a

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 282
    int-to-float v1, v4

    mul-float/2addr v1, v10

    float-to-int v3, v1

    .line 283
    const/4 v8, 0x1

    .line 291
    :cond_1
    :goto_1
    const/4 v11, 0x0

    .line 292
    .local v11, tmp:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_3

    .line 293
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 294
    if-eq v11, v0, :cond_2

    .line 295
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 297
    :cond_2
    move-object v0, v11

    .line 299
    :cond_3
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 300
    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 302
    if-eq v11, v0, :cond_4

    .line 303
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_4
    move-object v0, v11

    :cond_5
    :goto_2
    move-object v1, v0

    .line 311
    goto :goto_0

    .line 284
    .end local v11           #tmp:Landroid/graphics/Bitmap;
    :cond_6
    sub-float v1, v9, v10

    const v2, -0x43dc28f6

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 285
    int-to-float v1, v3

    div-float/2addr v1, v10

    float-to-int v4, v1

    .line 286
    const/4 v8, 0x1

    goto :goto_1

    .line 307
    .restart local v11       #tmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v7

    .line 308
    .local v7, e:Ljava/lang/OutOfMemoryError;
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getDisplayedAlbum(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "trackId"
    .parameter "albumId"
    .parameter "al"
    .parameter "ar"

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, bm:Landroid/graphics/Bitmap;
    const-string v1, "android_album"

    invoke-static {p0, v1}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/player/meta/AlbumManager;->getArtwork(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 504
    :cond_0
    if-nez v0, :cond_1

    .line 505
    invoke-static {p5, p6}, Lcom/miui/player/meta/AlbumManager;->getArtworkFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 508
    :cond_1
    return-object v0
.end method

.method public static getDisplayedAlbum(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "albumId"
    .parameter "album"
    .parameter "artist"
    .parameter "fromDB"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 513
    const/4 v6, 0x0

    .line 515
    .local v6, b:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 516
    .local v5, opt:Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 517
    const/4 v0, 0x0

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 519
    if-eqz p5, :cond_0

    const-string v0, "android_album"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-wide v1, p1

    move v3, p6

    move v4, p7

    .line 520
    invoke-static/range {v0 .. v5}, Lcom/miui/player/meta/AlbumManager;->getArtworkQuickFromDB(Landroid/content/Context;JIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 522
    :cond_0
    if-nez v6, :cond_1

    .line 523
    invoke-static {p3, p4, p6, p7, v5}, Lcom/miui/player/meta/AlbumManager;->getArtworkQuickFromFile(Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 526
    :cond_1
    return-object v6
.end method

.method static getSampleOpt(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .parameter "opt"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 255
    const/4 v2, 0x1

    .line 256
    .local v2, sampleSize:I
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 257
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v1, v3, 0x1

    .line 258
    .local v1, nextWidth:I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v0, v3, 0x1

    .line 259
    .local v0, nextHeight:I
    :goto_0
    if-le v1, p1, :cond_0

    if-le v0, p2, :cond_0

    .line 260
    shl-int/lit8 v2, v2, 0x1

    .line 261
    shr-int/lit8 v1, v1, 0x1

    .line 262
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v0           #nextHeight:I
    .end local v1           #nextWidth:I
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 266
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 267
    return-object p0
.end method

.method public static isArtworkQuickExist(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Z
    .locals 7
    .parameter "context"
    .parameter "albumId"
    .parameter "opt"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 372
    .local v1, res:Landroid/content/ContentResolver;
    sget-object v5, Lcom/miui/player/meta/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 373
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 374
    const/4 v0, 0x0

    .line 376
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v5, "r"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 377
    const/4 v5, 0x1

    iput-boolean v5, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 378
    const/4 v5, 0x0

    iput v5, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 379
    const/4 v5, 0x0

    iput v5, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 380
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 381
    iget v5, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v5, :cond_1

    iget v5, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    if-lez v5, :cond_1

    .line 390
    if-eqz v0, :cond_0

    .line 391
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 397
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return v3

    .line 390
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    if-eqz v0, :cond_2

    .line 391
    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_2
    :goto_1
    move v3, v4

    .line 397
    goto :goto_0

    .line 385
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v3

    .line 390
    if-eqz v0, :cond_2

    .line 391
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 393
    :catch_1
    move-exception v3

    goto :goto_1

    .line 386
    :catch_2
    move-exception v3

    .line 390
    if-eqz v0, :cond_2

    .line 391
    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 393
    :catch_3
    move-exception v3

    goto :goto_1

    .line 389
    :catchall_0
    move-exception v3

    .line 390
    if-eqz v0, :cond_3

    .line 391
    :try_start_5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 394
    :cond_3
    :goto_2
    throw v3

    .line 393
    :catch_4
    move-exception v4

    goto :goto_0

    :catch_5
    move-exception v3

    goto :goto_1

    :catch_6
    move-exception v4

    goto :goto_2
.end method

.method private static isValidAlbumInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "ar"
    .parameter "al"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 121
    invoke-static {p1}, Lcom/miui/player/meta/MetaManager;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 122
    .local v0, isValidAlbum:Z
    :goto_0
    invoke-static {p0}, Lcom/miui/player/meta/MetaManager;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    .line 124
    .local v1, isValidArtist:Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0           #isValidAlbum:Z
    .end local v1           #isValidArtist:Z
    :cond_2
    move v0, v3

    .line 121
    goto :goto_0

    .restart local v0       #isValidAlbum:Z
    :cond_3
    move v1, v3

    .line 122
    goto :goto_1
.end method
