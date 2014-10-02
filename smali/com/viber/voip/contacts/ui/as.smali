.class Lcom/viber/voip/contacts/ui/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/contacts/ui/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/as;->b:Lcom/viber/voip/contacts/ui/ap;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/as;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/as;->b:Lcom/viber/voip/contacts/ui/ap;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ap;->a:Lcom/viber/voip/contacts/ui/cb;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/as;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/as;->b:Lcom/viber/voip/contacts/ui/ap;

    iget-object v2, v2, Lcom/viber/voip/contacts/ui/ap;->f:Lcom/viber/voip/contacts/ui/be;

    iget-object v2, v2, Lcom/viber/voip/contacts/ui/be;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/ui/cb;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 691
    return-void
.end method
