.class Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;
.super Ljava/lang/Object;
.source "MusicBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MusicBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DriverItem"
.end annotation


# instance fields
.field public final mMimeType:Ljava/lang/String;

.field public final mName:I

.field public final mPref:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "pref"
    .parameter "mimeType"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mName:I

    .line 68
    iput-object p2, p0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mPref:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mMimeType:Ljava/lang/String;

    .line 70
    return-void
.end method
