.class public Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;
.super Ljava/lang/Object;
.source "UIHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/UIHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListViewPositionWrap"
.end annotation


# instance fields
.field private mLastListPosCourse:I

.field private mLastListPosFine:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->mLastListPosCourse:I

    .line 49
    iput v0, p0, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->mLastListPosFine:I

    return-void
.end method


# virtual methods
.method public restoreListPosition(Landroid/widget/ListView;)V
    .locals 2
    .parameter "lv"

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 64
    iget v0, p0, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->mLastListPosCourse:I

    if-ltz v0, :cond_0

    .line 65
    iget v0, p0, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->mLastListPosCourse:I

    iget v1, p0, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->mLastListPosFine:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 68
    :cond_0
    return-void
.end method

.method public saveListPosition(Landroid/widget/ListView;)V
    .locals 2
    .parameter "lv"

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->mLastListPosCourse:I

    .line 54
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->mLastListPosFine:I

    .line 59
    .end local v0           #cv:Landroid/view/View;
    :cond_0
    return-void
.end method
