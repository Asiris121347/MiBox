.class final Lcom/lbe/security/ui/adblock/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/lbe/security/ui/adblock/AdwareReportActivity;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/adblock/AdwareReportActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/adblock/q;->a:Lcom/lbe/security/ui/adblock/AdwareReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/adblock/q;->a:Lcom/lbe/security/ui/adblock/AdwareReportActivity;

    invoke-virtual {v0}, Lcom/lbe/security/ui/adblock/AdwareReportActivity;->finish()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method