.class Lcom/android/launcher2/dE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/actionbarsherlock/internal/nineoldandroids/a/A;


# instance fields
.field final synthetic ars:Lcom/android/launcher2/FolderIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/dE;->ars:Lcom/android/launcher2/FolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/actionbarsherlock/internal/nineoldandroids/a/u;)V
    .locals 2

    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/nineoldandroids/a/u;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/dE;->ars:Lcom/android/launcher2/FolderIcon;

    invoke-static {v1}, Lcom/android/launcher2/FolderIcon;->a(Lcom/android/launcher2/FolderIcon;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/launcher2/dE;->ars:Lcom/android/launcher2/FolderIcon;

    invoke-static {v1}, Lcom/android/launcher2/FolderIcon;->a(Lcom/android/launcher2/FolderIcon;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
