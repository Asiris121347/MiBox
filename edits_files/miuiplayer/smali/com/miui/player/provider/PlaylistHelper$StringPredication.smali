.class Lcom/miui/player/provider/PlaylistHelper$StringPredication;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Lcom/xiaomi/common/util/CollectionHelper$Predication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/provider/PlaylistHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringPredication"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/common/util/CollectionHelper$Predication",
        "<",
        "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRefCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, ref:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/miui/player/provider/PlaylistHelper$StringPredication;->mRefCollection:Ljava/util/Collection;

    .line 256
    return-void
.end method


# virtual methods
.method public predicate(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/miui/player/provider/PlaylistHelper$StringPredication;->mRefCollection:Ljava/util/Collection;

    iget-object v1, p1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic predicate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 251
    check-cast p1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/provider/PlaylistHelper$StringPredication;->predicate(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;)Z

    move-result v0

    return v0
.end method
