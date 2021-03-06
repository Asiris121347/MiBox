.class public Lcom/miui/player/provider/PlayerProviderUtils;
.super Ljava/lang/Object;
.source "PlayerProviderUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearNowplayingList(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 365
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    .line 366
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 367
    return-void
.end method

.method public static codeEqualizerConfig([I)Ljava/lang/String;
    .locals 3
    .parameter "src"

    .prologue
    .line 561
    if-nez p0, :cond_0

    .line 562
    const/4 v2, 0x0

    .line 570
    :goto_0
    return-object v2

    .line 565
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 566
    .local v0, arr:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 567
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 570
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static createEqualizerConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "name"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 638
    const/4 v2, 0x0

    .line 639
    .local v2, uri:Landroid/net/Uri;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 640
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 641
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 642
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v4, "_data"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-static {p0, p1}, Lcom/miui/player/provider/PlayerProviderUtils;->idForEqualizer(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 646
    .local v0, id:I
    if-ltz v0, :cond_1

    .line 647
    sget-object v4, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 648
    invoke-virtual {v1, v2, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 654
    .end local v0           #id:I
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-object v2

    .line 650
    .restart local v0       #id:I
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_1
    sget-object v4, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public static createMemberInfoById(Landroid/content/Context;[JI)[Landroid/content/ContentValues;
    .locals 21
    .parameter "context"
    .parameter "ids"
    .parameter "orderBase"

    .prologue
    .line 97
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 98
    :cond_0
    const/4 v14, 0x0

    .line 161
    :cond_1
    :goto_0
    return-object v14

    .line 101
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v10, localAudioIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v12, onlineAudioIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v3, p1

    .local v3, arr$:[J
    array-length v8, v3

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v8, :cond_4

    aget-wide v19, v3, v5

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 104
    .local v6, id:Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v19

    if-nez v19, :cond_3

    .line 105
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 111
    .end local v6           #id:Ljava/lang/Long;
    :cond_4
    const/4 v9, 0x0

    .line 112
    .local v9, local:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    const/4 v11, 0x0

    .line 114
    .local v11, online:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_5

    .line 115
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/miui/player/provider/PlayerProviderUtils;->createMemberInfoFromLocalLib(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .line 118
    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_6

    .line 119
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/miui/player/provider/PlayerProviderUtils;->createMemberInfoFromPlaylist(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v11

    .line 122
    :cond_6
    const/16 v17, 0x0

    .line 123
    .local v17, temp:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    if-eqz v9, :cond_8

    if-nez v11, :cond_8

    .line 124
    move-object/from16 v17, v9

    .line 129
    :cond_7
    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v14, v0, [Landroid/content/ContentValues;

    .line 130
    .local v14, ret:[Landroid/content/ContentValues;
    const/4 v15, 0x0

    .line 132
    .local v15, row:I
    if-eqz v17, :cond_b

    .line 133
    move-object/from16 v3, p1

    array-length v8, v3

    const/4 v5, 0x0

    move/from16 v16, v15

    .end local v15           #row:I
    .local v16, row:I
    move/from16 v13, p2

    .end local p2
    .local v13, orderBase:I
    :goto_4
    if-ge v5, v8, :cond_9

    aget-wide v6, v3, v5

    .line 134
    .local v6, id:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 135
    .local v4, cv:Landroid/content/ContentValues;
    if-eqz v4, :cond_f

    .line 136
    const-string v19, "play_order"

    add-int/lit8 p2, v13, 0x1

    .end local v13           #orderBase:I
    .restart local p2
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    add-int/lit8 v15, v16, 0x1

    .end local v16           #row:I
    .restart local v15       #row:I
    aput-object v4, v14, v16

    .line 133
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v15

    .end local v15           #row:I
    .restart local v16       #row:I
    move/from16 v13, p2

    .end local p2
    .restart local v13       #orderBase:I
    goto :goto_4

    .line 125
    .end local v4           #cv:Landroid/content/ContentValues;
    .end local v6           #id:J
    .end local v13           #orderBase:I
    .end local v14           #ret:[Landroid/content/ContentValues;
    .end local v16           #row:I
    .restart local p2
    :cond_8
    if-nez v9, :cond_7

    if-eqz v11, :cond_7

    .line 126
    move-object/from16 v17, v11

    goto :goto_3

    .end local p2
    .restart local v13       #orderBase:I
    .restart local v14       #ret:[Landroid/content/ContentValues;
    .restart local v16       #row:I
    :cond_9
    move/from16 v15, v16

    .end local v16           #row:I
    .restart local v15       #row:I
    move/from16 p2, v13

    .line 154
    .end local v13           #orderBase:I
    .restart local p2
    :cond_a
    :goto_6
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v15, v0, :cond_1

    .line 156
    new-array v0, v15, [Landroid/content/ContentValues;

    move-object/from16 v18, v0

    .line 157
    .local v18, tempValues:[Landroid/content/ContentValues;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-static {v14, v0, v1, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    move-object/from16 v14, v18

    goto/16 :goto_0

    .line 140
    .end local v18           #tempValues:[Landroid/content/ContentValues;
    :cond_b
    if-eqz v9, :cond_a

    if-eqz v11, :cond_a

    .line 141
    move-object/from16 v3, p1

    array-length v8, v3

    const/4 v5, 0x0

    move/from16 v16, v15

    .end local v15           #row:I
    .restart local v16       #row:I
    move/from16 v13, p2

    .end local p2
    .restart local v13       #orderBase:I
    :goto_7
    if-ge v5, v8, :cond_e

    aget-wide v6, v3, v5

    .line 142
    .restart local v6       #id:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 143
    .restart local v4       #cv:Landroid/content/ContentValues;
    if-nez v4, :cond_c

    .line 144
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #cv:Landroid/content/ContentValues;
    check-cast v4, Landroid/content/ContentValues;

    .line 147
    .restart local v4       #cv:Landroid/content/ContentValues;
    :cond_c
    if-eqz v4, :cond_d

    .line 148
    const-string v19, "play_order"

    add-int/lit8 p2, v13, 0x1

    .end local v13           #orderBase:I
    .restart local p2
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    add-int/lit8 v15, v16, 0x1

    .end local v16           #row:I
    .restart local v15       #row:I
    aput-object v4, v14, v16

    .line 141
    :goto_8
    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v15

    .end local v15           #row:I
    .restart local v16       #row:I
    move/from16 v13, p2

    .end local p2
    .restart local v13       #orderBase:I
    goto :goto_7

    :cond_d
    move/from16 v15, v16

    .end local v16           #row:I
    .restart local v15       #row:I
    move/from16 p2, v13

    .end local v13           #orderBase:I
    .restart local p2
    goto :goto_8

    .end local v4           #cv:Landroid/content/ContentValues;
    .end local v6           #id:J
    .end local v15           #row:I
    .end local p2
    .restart local v13       #orderBase:I
    .restart local v16       #row:I
    :cond_e
    move/from16 v15, v16

    .end local v16           #row:I
    .restart local v15       #row:I
    move/from16 p2, v13

    .end local v13           #orderBase:I
    .restart local p2
    goto :goto_6

    .end local v15           #row:I
    .end local p2
    .restart local v4       #cv:Landroid/content/ContentValues;
    .restart local v6       #id:J
    .restart local v13       #orderBase:I
    .restart local v16       #row:I
    :cond_f
    move/from16 v15, v16

    .end local v16           #row:I
    .restart local v15       #row:I
    move/from16 p2, v13

    .end local v13           #orderBase:I
    .restart local p2
    goto/16 :goto_5
.end method

.method public static createMemberInfoByProviderId(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 10
    .parameter "context"
    .parameter
    .parameter "provider"
    .parameter "playOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, songItems:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    invoke-static {p1}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 304
    const/4 v6, 0x0

    .line 331
    :cond_0
    return-object v6

    .line 307
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 308
    .local v6, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    .line 309
    .local v7, songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    if-eqz v7, :cond_2

    .line 310
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 314
    .local v2, cv:Landroid/content/ContentValues;
    const-string v8, "_data"

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v8, "online_id"

    iget-object v9, v7, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v8, v7, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    invoke-static {v8}, Lcom/miui/player/provider/PlayerProviderUtils;->noNullValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, name:Ljava/lang/String;
    iget-object v8, v7, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Album:Ljava/lang/String;

    invoke-static {v8}, Lcom/miui/player/provider/PlayerProviderUtils;->noNullValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, album:Ljava/lang/String;
    iget-object v8, v7, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    invoke-static {v8}, Lcom/miui/player/provider/PlayerProviderUtils;->noNullValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, artist:Ljava/lang/String;
    const-string v8, "title"

    invoke-virtual {v2, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v8, "album"

    invoke-virtual {v2, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v8, "artist"

    invoke-virtual {v2, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v8, "provider_id"

    invoke-virtual {v2, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v8, "duration"

    iget v9, v7, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->DurationInSecond:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    const-string v8, "play_order"

    add-int/lit8 v5, p3, 0x1

    .end local p3
    .local v5, playOrder:I
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p3, v5

    .end local v5           #playOrder:I
    .restart local p3
    goto :goto_0
.end method

.method private static createMemberInfoFromLocalLib(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 21
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "album"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "artist"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "duration"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "title"

    aput-object v3, v4, v2

    .line 247
    .local v4, MEMBER_COLS:[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 248
    :cond_0
    const/16 v18, 0x0

    .line 289
    :goto_0
    return-object v18

    .line 251
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/miui/player/util/SqlUtils;->concatAsSet(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v15

    .line 252
    .local v15, idSet:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 253
    .local v20, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 255
    .local v10, c:Landroid/database/Cursor;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 257
    .local v18, res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    if-nez v10, :cond_2

    .line 258
    const/16 v18, 0x0

    goto :goto_0

    .line 262
    :cond_2
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_3

    .line 263
    const/16 v18, 0x0

    .line 286
    .end local v18           #res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 266
    .restart local v18       #res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    :cond_3
    :try_start_1
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 267
    .local v14, idIdx:I
    const-string v2, "_data"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 268
    .local v12, dataIdx:I
    const-string v2, "title"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 269
    .local v19, titleIdx:I
    const-string v2, "album"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 270
    .local v8, albumIdx:I
    const-string v2, "artist"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 271
    .local v9, artistIdx:I
    const-string v2, "duration"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 273
    .local v13, durationIdx:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    .line 274
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 275
    .local v11, cv:Landroid/content/ContentValues;
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 276
    .local v16, key:J
    const-string v2, "audio_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 277
    const-string v2, "_data"

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v2, "title"

    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v2, "album"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v2, "artist"

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v2, "duration"

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 286
    .end local v8           #albumIdx:I
    .end local v9           #artistIdx:I
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v12           #dataIdx:I
    .end local v13           #durationIdx:I
    .end local v14           #idIdx:I
    .end local v16           #key:J
    .end local v19           #titleIdx:I
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v8       #albumIdx:I
    .restart local v9       #artistIdx:I
    .restart local v12       #dataIdx:I
    .restart local v13       #durationIdx:I
    .restart local v14       #idIdx:I
    .restart local v19       #titleIdx:I
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private static createMemberInfoFromPlaylist(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 21
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x7

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "duration"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "online_id"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v3, v1

    .line 183
    .local v3, MEMBER_COLS:[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 184
    :cond_0
    const/16 v19, 0x0

    .line 229
    :goto_0
    return-object v19

    .line 187
    :cond_1
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v19, res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    invoke-static/range {p1 .. p1}, Lcom/miui/player/util/SqlUtils;->concatAsSet(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v14

    .line 190
    .local v14, idSet:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_id IN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 195
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 196
    const/16 v19, 0x0

    goto :goto_0

    .line 199
    :cond_2
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_3

    .line 200
    const/16 v19, 0x0

    .line 226
    .end local v19           #res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 203
    .restart local v19       #res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    :cond_3
    :try_start_1
    const-string v1, "audio_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 204
    .local v13, idIdx:I
    const-string v1, "_data"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 205
    .local v11, dataIdx:I
    const-string v1, "title"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 206
    .local v20, titleIdx:I
    const-string v1, "album"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 207
    .local v7, albumIdx:I
    const-string v1, "artist"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 208
    .local v8, artistIdx:I
    const-string v1, "duration"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 209
    .local v12, durationIdx:I
    const-string v1, "online_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 211
    .local v18, providerIdx:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    .line 212
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 213
    .local v10, cv:Landroid/content/ContentValues;
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 214
    .local v15, key:J
    const-string v1, "_data"

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "title"

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "album"

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v1, "artist"

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v1, "duration"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 221
    .local v17, provider:Ljava/lang/String;
    const-string v1, "online_id"

    move-object/from16 v0, v17

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 226
    .end local v7           #albumIdx:I
    .end local v8           #artistIdx:I
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v11           #dataIdx:I
    .end local v12           #durationIdx:I
    .end local v13           #idIdx:I
    .end local v15           #key:J
    .end local v17           #provider:Ljava/lang/String;
    .end local v18           #providerIdx:I
    .end local v20           #titleIdx:I
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v7       #albumIdx:I
    .restart local v8       #artistIdx:I
    .restart local v11       #dataIdx:I
    .restart local v12       #durationIdx:I
    .restart local v13       #idIdx:I
    .restart local v18       #providerIdx:I
    .restart local v20       #titleIdx:I
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static decodeEqualizerConfig(Ljava/lang/String;)[I
    .locals 5
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 543
    if-nez p0, :cond_1

    move-object v2, v3

    .line 557
    :cond_0
    :goto_0
    return-object v2

    .line 548
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 549
    .local v0, arr:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v2, v4, [I

    .line 550
    .local v2, ret:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 551
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v2, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 554
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #i:I
    .end local v2           #ret:[I
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 557
    goto :goto_0
.end method

.method public static filterNowPlaying(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "where"
    .parameter "isFirst"

    .prologue
    const/4 v6, 0x0

    .line 39
    const-string v1, "%s %s %s != \'%s\'"

    .line 40
    .local v1, PATTERN:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v0, ""

    .line 42
    .local v0, AND:Ljava/lang/String;
    :goto_0
    const-string v2, "%s %s %s != \'%s\'"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 40
    .end local v0           #AND:Ljava/lang/String;
    :cond_0
    const-string v0, " AND "

    goto :goto_0
.end method

.method public static getDownloadedAudioId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 11
    .parameter "context"
    .parameter "tr"
    .parameter "ar"
    .parameter "audioId"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 505
    cmp-long v0, p3, v8

    if-lez v0, :cond_0

    invoke-static {p3, p4}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    .end local p3
    :goto_0
    return-wide p3

    .line 509
    .restart local p3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide p3, v8

    .line 510
    goto :goto_0

    .line 512
    :cond_1
    const-wide/16 v8, 0x0

    .line 513
    .local v8, ret:J
    const-string v0, "mp3"

    invoke-static {p1, p2, v0}, Lcom/miui/player/meta/MetaManager;->getMetaFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 514
    .local v7, path:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 515
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "_data=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v7, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 522
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 523
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 527
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    move-wide p3, v8

    .line 531
    goto :goto_0
.end method

.method public static getEqualizerConfigData(Landroid/content/Context;I)[I
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 583
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/player/provider/PlayerProviderUtils;->getEqualizerConfigData(Landroid/content/Context;IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static getEqualizerConfigData(Landroid/content/Context;IZ)[I
    .locals 9
    .parameter "context"
    .parameter "id"
    .parameter "allowNull"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 587
    const/4 v7, 0x0

    .line 588
    .local v7, levels:[I
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 589
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 592
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 593
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/provider/PlayerProviderUtils;->decodeEqualizerConfig(Ljava/lang/String;)[I

    move-result-object v7

    .line 596
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 599
    :cond_1
    if-eqz v7, :cond_2

    array-length v0, v7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 600
    const/4 v7, 0x0

    .line 604
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    if-nez v7, :cond_3

    if-nez p2, :cond_3

    .line 605
    invoke-static {}, Lcom/miui/player/provider/PlayerProviderUtils;->getEuqalizerDefaultData()[I

    move-result-object v7

    .line 608
    :cond_3
    return-object v7
.end method

.method public static getEqualizerIdByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "defaultName"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 612
    const/4 v7, -0x1

    .line 613
    .local v7, ret:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 614
    .local v0, res:Landroid/content/ContentResolver;
    new-array v2, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v8

    .line 615
    .local v2, projs:[Ljava/lang/String;
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 620
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 621
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 624
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 627
    :cond_1
    return v7
.end method

.method public static getEuqalizerDefaultData()[I
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 574
    new-array v1, v3, [I

    .line 575
    .local v1, levels:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 576
    const/4 v2, 0x0

    aput v2, v1, v0

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 579
    :cond_0
    return-object v1
.end method

.method public static getOnlineId(Landroid/content/Context;JLjava/lang/Long;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "audioId"
    .parameter "playlistId"

    .prologue
    const/4 v3, 0x1

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v0, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {p0, v0, p3}, Lcom/miui/player/provider/PlayerProviderUtils;->getOnlineIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Long;)[Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, providerIds:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v2, v3, :cond_1

    .line 88
    :cond_0
    const/4 v2, 0x0

    .line 91
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    aget-object v2, v1, v2

    goto :goto_0
.end method

.method public static getOnlineIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Long;)[Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter
    .parameter "playlistId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, audioIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 47
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v5, :cond_2

    :cond_0
    move-object v9, v4

    .line 79
    :cond_1
    :goto_0
    return-object v9

    .line 51
    :cond_2
    invoke-static {p1}, Lcom/miui/player/util/SqlUtils;->concatAsSet(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v8

    .line 52
    .local v8, idSet:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, WHERE:Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "online_id"

    aput-object v0, v2, v12

    .line 57
    .local v2, ONLINE_ID_COL:[Ljava/lang/String;
    new-array v9, v12, [Ljava/lang/String;

    .line 59
    .local v9, ret:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 61
    .local v6, c:Landroid/database/Cursor;
    if-eqz p2, :cond_3

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 70
    :goto_1
    if-eqz v6, :cond_1

    .line 71
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 72
    const/4 v7, 0x0

    .line 73
    .local v7, i:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 74
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 73
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 66
    .end local v7           #i:I
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1

    .line 76
    .restart local v7       #i:I
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static guessAudioIdColumnIndex(Landroid/database/Cursor;)I
    .locals 3
    .parameter "c"

    .prologue
    .line 676
    const/4 v1, -0x1

    .line 679
    .local v1, index:I
    :try_start_0
    const-string v2, "audio_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 685
    :goto_0
    return v1

    .line 680
    :catch_0
    move-exception v0

    .line 682
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static idForEqualizer(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 658
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 664
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 665
    .local v7, id:I
    if-eqz v6, :cond_1

    .line 666
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 667
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 670
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 672
    :cond_1
    return v7
.end method

.method private static noNullValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "str"

    .prologue
    .line 335
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0
    :cond_0
    return-object p0
.end method

.method private static queryAudioIdForNowPlaying(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "minOrder"

    .prologue
    .line 491
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 495
    .local v2, AUDIO_COLUMN:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play_order >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 497
    .local v3, WHERE:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "play_order"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 500
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method public static queryNormalEqualizer(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 535
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    const-string v3, "_id != 0"

    const-string v5, "_id"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static removeMembersFromDB(Landroid/content/Context;J[J)I
    .locals 5
    .parameter "context"
    .parameter "playlistId"
    .parameter "audioIds"

    .prologue
    .line 339
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-ltz v3, :cond_0

    if-nez p3, :cond_1

    .line 340
    :cond_0
    const/4 v3, -0x1

    .line 345
    :goto_0
    return v3

    .line 342
    :cond_1
    invoke-static {p1, p2}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 343
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p3}, Lcom/miui/player/util/SqlUtils;->concatAsSet([J)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, removeSet:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio_id IN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public static removeOnlineMembersFromDB(Landroid/content/Context;JLjava/util/Collection;Ljava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "playlistId"
    .parameter
    .parameter "provider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 350
    .local p3, onlineIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-ltz v3, :cond_0

    invoke-static {p3}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    :cond_0
    const/4 v3, -0x1

    .line 360
    :goto_0
    return v3

    .line 354
    :cond_1
    invoke-static {p1, p2}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 355
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p3}, Lcom/miui/player/util/SqlUtils;->concatAsSet(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, removeSet:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online_id IN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, where:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND provider_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public static synchronizeMiuiPlaylist(Landroid/content/Context;[J)V
    .locals 5
    .parameter "context"
    .parameter "audioIds"

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 31
    .local v1, res:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/miui/player/util/SqlUtils;->concatAsSet([J)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, idSet:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio_id IN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, whereDelFromPlaylist:Ljava/lang/String;
    sget-object v3, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public static updateEqualizerConfig(Landroid/content/Context;I[I)I
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "src"

    .prologue
    const/4 v5, 0x0

    .line 631
    sget-object v2, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 632
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 633
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-static {p2}, Lcom/miui/player/provider/PlayerProviderUtils;->codeEqualizerConfig([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static updateNowplayingList(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Z)[J
    .locals 11
    .parameter "context"
    .parameter
    .parameter "provider"
    .parameter "append"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;",
            ">;",
            "Ljava/lang/String;",
            "Z)[J"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, songItems:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    const/4 v0, 0x0

    .line 376
    .local v0, base:I
    invoke-static {p1}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 377
    const/4 v5, 0x0

    .line 409
    :cond_0
    :goto_0
    return-object v5

    .line 380
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 381
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v6, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    .line 382
    .local v6, uri:Landroid/net/Uri;
    if-nez p3, :cond_2

    .line 383
    invoke-static {p0}, Lcom/miui/player/provider/PlayerProviderUtils;->clearNowplayingList(Landroid/content/Context;)V

    .line 388
    :goto_1
    const/4 v5, 0x0

    .line 389
    .local v5, ret:[J
    invoke-static {p0, p1, p2, v0}, Lcom/miui/player/provider/PlayerProviderUtils;->createMemberInfoByProviderId(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v8

    .line 390
    .local v8, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_0

    .line 391
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v7, v9, [Landroid/content/ContentValues;

    .line 392
    .local v7, valueArr:[Landroid/content/ContentValues;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 393
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 395
    invoke-static {p0, v0}, Lcom/miui/player/provider/PlayerProviderUtils;->queryAudioIdForNowPlaying(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 396
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 398
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    new-array v5, v9, [J

    .line 399
    const/4 v2, 0x0

    .line 400
    .local v2, i:I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_3

    .line 401
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    aput-wide v9, v5, v3

    .line 400
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_2

    .line 385
    .end local v1           #c:Landroid/database/Cursor;
    .end local v3           #i:I
    .end local v5           #ret:[J
    .end local v7           #valueArr:[Landroid/content/ContentValues;
    .end local v8           #valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_2
    invoke-static {p0, v6}, Lcom/miui/player/util/SqlUtils;->getRecordCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    goto :goto_1

    .line 404
    .restart local v1       #c:Landroid/database/Cursor;
    .restart local v3       #i:I
    .restart local v5       #ret:[J
    .restart local v7       #valueArr:[Landroid/content/ContentValues;
    .restart local v8       #valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v3           #i:I
    :catchall_0
    move-exception v9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v9
.end method

.method public static updateNowplayingList(Landroid/content/Context;[JZ)[J
    .locals 28
    .parameter "context"
    .parameter "ids"
    .parameter "append"

    .prologue
    .line 417
    const/4 v7, 0x0

    .line 419
    .local v7, base:I
    if-nez p2, :cond_0

    .line 420
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/PlayerProviderUtils;->clearNowplayingList(Landroid/content/Context;)V

    .line 423
    :cond_0
    if-nez p1, :cond_2

    .line 424
    const/16 v21, 0x0

    .line 486
    :cond_1
    return-object v21

    .line 427
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 428
    .local v20, resolver:Landroid/content/ContentResolver;
    sget-object v22, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    .line 429
    .local v22, uri:Landroid/net/Uri;
    if-eqz p2, :cond_3

    .line 430
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/miui/player/util/SqlUtils;->getRecordCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v7

    .line 433
    :cond_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [J

    move-object/from16 v21, v0

    .line 434
    .local v21, ret:[J
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v21

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v15, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v16, indexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_5

    .line 439
    aget-wide v25, v21, v10

    invoke-static/range {v25 .. v26}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 440
    aget-wide v25, v21, v10

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 445
    :cond_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-eqz v25, :cond_1

    .line 449
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/miui/player/provider/PlayerProviderUtils;->createMemberInfoFromPlaylist(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v24

    .line 450
    .local v24, valueMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    if-eqz v24, :cond_1

    .line 451
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v23, v0

    .line 452
    .local v23, valueArr:[Landroid/content/ContentValues;
    move/from16 v18, v7

    .line 454
    .local v18, playerOrder:I
    const/4 v10, 0x0

    .line 456
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 457
    .local v13, id:J
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 458
    .local v9, cv:Landroid/content/ContentValues;
    if-eqz v9, :cond_6

    .line 459
    const-string v25, "play_order"

    add-int/lit8 v19, v18, 0x1

    .end local v18           #playerOrder:I
    .local v19, playerOrder:I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .local v11, i:I
    aput-object v9, v23, v10

    move v10, v11

    .end local v11           #i:I
    .restart local v10       #i:I
    move/from16 v18, v19

    .end local v19           #playerOrder:I
    .restart local v18       #playerOrder:I
    goto :goto_1

    .line 464
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v13           #id:J
    :cond_7
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 465
    const/4 v5, 0x0

    .line 466
    .local v5, assignedIndexCount:I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 468
    .local v17, indexSize:I
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/miui/player/provider/PlayerProviderUtils;->queryAudioIdForNowPlaying(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v8

    .line 469
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_9

    .line 471
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v5

    .line 472
    .end local v5           #assignedIndexCount:I
    .local v6, assignedIndexCount:I
    :goto_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v25

    if-nez v25, :cond_8

    move/from16 v0, v17

    if-ge v6, v0, :cond_8

    .line 474
    add-int/lit8 v5, v6, 0x1

    .end local v6           #assignedIndexCount:I
    .restart local v5       #assignedIndexCount:I
    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    aput-wide v26, v21, v25

    .line 473
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, v5

    .end local v5           #assignedIndexCount:I
    .restart local v6       #assignedIndexCount:I
    goto :goto_2

    .line 477
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v5, v6

    .line 481
    .end local v6           #assignedIndexCount:I
    .restart local v5       #assignedIndexCount:I
    :cond_9
    :goto_3
    move/from16 v0, v17

    if-ge v5, v0, :cond_1

    .line 482
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const-wide/16 v26, 0x0

    aput-wide v26, v21, v25

    .line 481
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 477
    :catchall_0
    move-exception v25

    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v25

    .end local v5           #assignedIndexCount:I
    .restart local v6       #assignedIndexCount:I
    :catchall_1
    move-exception v25

    move v5, v6

    .end local v6           #assignedIndexCount:I
    .restart local v5       #assignedIndexCount:I
    goto :goto_4
.end method
