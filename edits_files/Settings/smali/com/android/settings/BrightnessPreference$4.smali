.class Lcom/android/settings/BrightnessPreference$4;
.super Ljava/lang/Object;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BrightnessPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings/BrightnessPreference$4;->this$0:Lcom/android/settings/BrightnessPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference$4;->this$0:Lcom/android/settings/BrightnessPreference;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/BrightnessPreference;->showCustomizeDialog(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/settings/BrightnessPreference;->access$300(Lcom/android/settings/BrightnessPreference;Landroid/os/Bundle;)V

    .line 130
    return-void
.end method
