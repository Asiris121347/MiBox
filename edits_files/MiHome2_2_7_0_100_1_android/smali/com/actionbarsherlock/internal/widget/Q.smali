.class public abstract Lcom/actionbarsherlock/internal/widget/Q;
.super Landroid/view/ViewGroup;


# instance fields
.field private aeq:I

.field avX:Lcom/actionbarsherlock/internal/widget/t;

.field private avY:Z

.field private avZ:Z

.field private awa:Lcom/actionbarsherlock/internal/widget/f;

.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I

.field mInLayout:Z

.field mItemCount:I

.field mNeedSync:Z

.field mNextSelectedPosition:I

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mSelectedPosition:I

.field mSelectedRowId:J

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mFirstPosition:I

    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSyncRowId:J

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNeedSync:Z

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mInLayout:Z

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNextSelectedPosition:I

    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNextSelectedRowId:J

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSelectedPosition:I

    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSelectedRowId:J

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/Q;->mOldSelectedPosition:I

    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mOldSelectedRowId:J

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mBlockLayoutRequests:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mFirstPosition:I

    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSyncRowId:J

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNeedSync:Z

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mInLayout:Z

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNextSelectedPosition:I

    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNextSelectedRowId:J

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSelectedPosition:I

    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSelectedRowId:J

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/Q;->mOldSelectedPosition:I

    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mOldSelectedRowId:J

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mBlockLayoutRequests:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mFirstPosition:I

    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSyncRowId:J

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNeedSync:Z

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mInLayout:Z

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNextSelectedPosition:I

    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNextSelectedRowId:J

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSelectedPosition:I

    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSelectedRowId:J

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/Q;->mOldSelectedPosition:I

    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mOldSelectedRowId:J

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mBlockLayoutRequests:Z

    return-void
.end method

.method static synthetic a(Lcom/actionbarsherlock/internal/widget/Q;Landroid/os/Parcelable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/Q;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method private aW(Z)V
    .locals 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/widget/Q;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mDataChanged:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/actionbarsherlock/internal/widget/Q;->onLayout(ZIIII)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/Q;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/Q;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/actionbarsherlock/internal/widget/Q;)Landroid/os/Parcelable;
    .locals 1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/actionbarsherlock/internal/widget/Q;)V
    .locals 0

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/Q;->ze()V

    return-void
.end method

.method private ze()V
    .locals 6

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->avX:Lcom/actionbarsherlock/internal/widget/t;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getSelectedItemPosition()I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getSelectedView()Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->avX:Lcom/actionbarsherlock/internal/widget/t;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/actionbarsherlock/internal/widget/t;->a(Lcom/actionbarsherlock/internal/widget/Q;Landroid/view/View;IJ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->avX:Lcom/actionbarsherlock/internal/widget/t;

    invoke-interface {v0, p0}, Lcom/actionbarsherlock/internal/widget/t;->a(Lcom/actionbarsherlock/internal/widget/Q;)V

    goto :goto_0
.end method

.method private zf()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getFirstVisiblePosition()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getLastVisiblePosition()I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Lcom/actionbarsherlock/internal/widget/t;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/Q;->avX:Lcom/actionbarsherlock/internal/widget/t;

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkFocus()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v3, :cond_7

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->avZ:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    if-eqz v3, :cond_8

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->avY:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    invoke-direct {p0, v2}, Lcom/actionbarsherlock/internal/widget/Q;->aW(Z)V

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v3, v2

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSelectedPosition:I

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/actionbarsherlock/internal/widget/Q;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->selectionChanged()V

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSelectedPosition:I

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mOldSelectedPosition:I

    iget-wide v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mOldSelectedRowId:J

    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/Q;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/Q;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method findSyncPosition()I
    .locals 15

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    iget v9, p0, Lcom/actionbarsherlock/internal/widget/Q;->mItemCount:I

    if-nez v9, :cond_1

    move v5, v6

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-wide v10, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSyncRowId:J

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSyncPosition:I

    const-wide/high16 v3, -0x8000

    cmp-long v3, v10, v3

    if-nez v3, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v3, v9, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x64

    add-long v12, v3, v7

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getAdapter()Landroid/widget/Adapter;

    move-result-object v14

    if-nez v14, :cond_b

    move v5, v6

    goto :goto_0

    :cond_3
    if-nez v7, :cond_4

    if-eqz v0, :cond_9

    if-nez v8, :cond_9

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v0

    move v0, v1

    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-gtz v7, :cond_6

    invoke-interface {v14, v5}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v7

    cmp-long v7, v7, v10

    if-eqz v7, :cond_0

    add-int/lit8 v7, v9, -0x1

    if-ne v3, v7, :cond_7

    move v8, v2

    :goto_2
    if-nez v4, :cond_8

    move v7, v2

    :goto_3
    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    :cond_6
    move v5, v6

    goto :goto_0

    :cond_7
    move v8, v1

    goto :goto_2

    :cond_8
    move v7, v1

    goto :goto_3

    :cond_9
    if-nez v8, :cond_a

    if-nez v0, :cond_5

    if-nez v7, :cond_5

    :cond_a
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move v5, v0

    move v0, v2

    goto :goto_1

    :cond_b
    move v3, v0

    move v4, v0

    move v5, v0

    move v0, v1

    goto :goto_1
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mItemCount:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mFirstPosition:I

    return v0
.end method

.method public getItemIdAtPosition(I)J
    .locals 2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000

    :goto_0
    return-wide v0

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getSelectedItemId()J
    .locals 2

    iget-wide v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 8

    const-wide/high16 v6, -0x8000

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v4, p0, Lcom/actionbarsherlock/internal/widget/Q;->mItemCount:I

    if-lez v4, :cond_6

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNeedSync:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNeedSync:Z

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->findSyncPosition()I

    move-result v0

    if-ltz v0, :cond_5

    invoke-virtual {p0, v0, v2}, Lcom/actionbarsherlock/internal/widget/Q;->lookForSelectablePosition(IZ)I

    move-result v3

    if-ne v3, v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/Q;->setNextSelectedPositionInt(I)V

    move v3, v2

    :goto_0
    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getSelectedItemPosition()I

    move-result v0

    if-lt v0, v4, :cond_0

    add-int/lit8 v0, v4, -0x1

    :cond_0
    if-gez v0, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/actionbarsherlock/internal/widget/Q;->lookForSelectablePosition(IZ)I

    move-result v4

    if-gez v4, :cond_4

    invoke-virtual {p0, v0, v1}, Lcom/actionbarsherlock/internal/widget/Q;->lookForSelectablePosition(IZ)I

    move-result v0

    :goto_1
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/Q;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->checkSelectionChanged()V

    move v0, v2

    :goto_2
    if-nez v0, :cond_2

    iput v5, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSelectedPosition:I

    iput-wide v6, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSelectedRowId:J

    iput v5, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNextSelectedPosition:I

    iput-wide v6, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNextSelectedRowId:J

    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNeedSync:Z

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->checkSelectionChanged()V

    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    move v3, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method isInFilterMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->awa:Lcom/actionbarsherlock/internal/widget/f;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/Q;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/Q;->zf()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/Q;->zf()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->aeq:I

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/Q;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method rememberSyncState()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iput-boolean v4, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNeedSync:Z

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->aeq:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSyncHeight:J

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSelectedPosition:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSelectedPosition:I

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/Q;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-wide v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNextSelectedRowId:J

    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSyncRowId:J

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNextSelectedPosition:I

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSyncPosition:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSpecificTop:I

    :cond_0
    iput v3, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSyncMode:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/Q;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/Q;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/Q;->mFirstPosition:I

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/Q;->mFirstPosition:I

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSyncRowId:J

    :goto_1
    iget v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mFirstPosition:I

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSyncPosition:I

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSpecificTop:I

    :cond_3
    iput v4, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSyncMode:I

    goto :goto_0

    :cond_4
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->avX:Lcom/actionbarsherlock/internal/widget/t;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->awa:Lcom/actionbarsherlock/internal/widget/f;

    if-nez v0, :cond_1

    new-instance v0, Lcom/actionbarsherlock/internal/widget/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/actionbarsherlock/internal/widget/f;-><init>(Lcom/actionbarsherlock/internal/widget/Q;Lcom/actionbarsherlock/internal/widget/L;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->awa:Lcom/actionbarsherlock/internal/widget/f;

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->awa:Lcom/actionbarsherlock/internal/widget/f;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/Q;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/Q;->sendAccessibilityEvent(I)V

    :cond_3
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/Q;->ze()V

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/widget/Q;->avY:Z

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/Q;->avZ:Z

    :cond_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/widget/Q;->avZ:Z

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/widget/Q;->avY:Z

    :cond_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/Q;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2

    iput p1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNextSelectedPosition:I

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/Q;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNextSelectedRowId:J

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSyncPosition:I

    iget-wide v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSyncRowId:J

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setSelectedPositionInt(I)V
    .locals 2

    iput p1, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSelectedPosition:I

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/Q;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/actionbarsherlock/internal/widget/Q;->mSelectedRowId:J

    return-void
.end method
