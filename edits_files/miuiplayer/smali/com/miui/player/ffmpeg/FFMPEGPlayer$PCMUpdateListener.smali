.class Lcom/miui/player/ffmpeg/FFMPEGPlayer$PCMUpdateListener;
.super Ljava/lang/Object;
.source "FFMPEGPlayer.java"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ffmpeg/FFMPEGPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PCMUpdateListener"
.end annotation


# instance fields
.field private final mPlayerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/player/ffmpeg/FFMPEGPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/player/ffmpeg/FFMPEGPlayer;)V
    .locals 1
    .parameter "player"

    .prologue
    .line 409
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 410
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer$PCMUpdateListener;->mPlayerRef:Ljava/lang/ref/WeakReference;

    .line 411
    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 2
    .parameter "track"

    .prologue
    .line 415
    iget-object v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer$PCMUpdateListener;->mPlayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    .line 416
    .local v0, player:Lcom/miui/player/ffmpeg/FFMPEGPlayer;
    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0, p1}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->onMarkerReached(Landroid/media/AudioTrack;)V

    .line 419
    :cond_0
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 0
    .parameter "track"

    .prologue
    .line 423
    return-void
.end method
