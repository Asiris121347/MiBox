.class abstract Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;
.super Ljava/lang/Object;
.source "AlbumSearchResultActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumSearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "HttpGetSyncRunnable"
.end annotation


# instance fields
.field private mResult:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 320
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;->mResult:Ljava/lang/Object;

    .line 325
    return-void
.end method
