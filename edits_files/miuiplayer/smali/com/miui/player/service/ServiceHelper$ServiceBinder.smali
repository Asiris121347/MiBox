.class Lcom/miui/player/service/ServiceHelper$ServiceBinder;
.super Ljava/lang/Object;
.source "ServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/ServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field mCallback:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/miui/player/service/ServiceHelper$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 83
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 86
    invoke-static {p2}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/player/service/IMediaPlaybackService;

    move-result-object v0

    sput-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 87
    iget-object v0, p0, Lcom/miui/player/service/ServiceHelper$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/miui/player/service/ServiceHelper$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/player/service/ServiceHelper$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/miui/player/service/ServiceHelper$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 96
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 97
    return-void
.end method
