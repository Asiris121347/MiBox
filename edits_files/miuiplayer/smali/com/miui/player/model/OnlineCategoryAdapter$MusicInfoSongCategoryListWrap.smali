.class public Lcom/miui/player/model/OnlineCategoryAdapter$MusicInfoSongCategoryListWrap;
.super Ljava/lang/Object;
.source "OnlineCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/OnlineCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicInfoSongCategoryListWrap"
.end annotation


# instance fields
.field private mCategoryList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 205
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/miui/player/model/OnlineCategoryAdapter$MusicInfoSongCategoryListWrap;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter$MusicInfoSongCategoryListWrap;->mCategoryList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;->SongCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSongCategoryItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;
    .locals 1
    .parameter "idx"

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/miui/player/model/OnlineCategoryAdapter$MusicInfoSongCategoryListWrap;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter$MusicInfoSongCategoryListWrap;->mCategoryList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;->SongCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter$MusicInfoSongCategoryListWrap;->mCategoryList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter$MusicInfoSongCategoryListWrap;->mCategoryList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;->SongCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSongCategoryList(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;)V
    .locals 0
    .parameter "categoryList"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/miui/player/model/OnlineCategoryAdapter$MusicInfoSongCategoryListWrap;->mCategoryList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    .line 221
    return-void
.end method
