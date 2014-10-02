.class Lcom/viber/voip/settings/ui/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/settings/ui/bj;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/bj;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/viber/voip/settings/ui/bm;->b:Lcom/viber/voip/settings/ui/bj;

    iput-wide p2, p0, Lcom/viber/voip/settings/ui/bm;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/viber/voip/settings/ui/bm;->a:J

    iget-object v2, p0, Lcom/viber/voip/settings/ui/bm;->b:Lcom/viber/voip/settings/ui/bj;

    invoke-virtual {v2}, Lcom/viber/voip/settings/ui/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/settings/ui/bj;->a(JLandroid/app/Activity;)V

    .line 123
    return-void
.end method
