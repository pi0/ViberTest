.class Lcom/viber/voip/calls/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hj;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/calls/ui/PhoneFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/ui/PhoneFragment;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/viber/voip/calls/ui/g;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    iput-boolean p2, p0, Lcom/viber/voip/calls/ui/g;->a:Z

    iput-boolean p3, p0, Lcom/viber/voip/calls/ui/g;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1050
    iget-object v0, p0, Lcom/viber/voip/calls/ui/g;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->h(Lcom/viber/voip/calls/ui/PhoneFragment;)Lcom/viber/voip/calls/ui/i;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/calls/ui/i;->a(Lcom/viber/voip/calls/ui/i;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1051
    iget-object v0, p0, Lcom/viber/voip/calls/ui/g;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->h(Lcom/viber/voip/calls/ui/PhoneFragment;)Lcom/viber/voip/calls/ui/i;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/viber/voip/calls/ui/i;->d(Lcom/viber/voip/calls/ui/i;Ljava/lang/String;)Ljava/lang/String;

    .line 1052
    const/4 v0, 0x6

    if-ne v0, p2, :cond_1

    .line 1053
    iget-object v0, p0, Lcom/viber/voip/calls/ui/g;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    iget-object v1, p0, Lcom/viber/voip/calls/ui/g;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->h(Lcom/viber/voip/calls/ui/PhoneFragment;)Lcom/viber/voip/calls/ui/i;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/calls/ui/i;Z)V

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    if-nez p2, :cond_3

    .line 1055
    iget-boolean v0, p0, Lcom/viber/voip/calls/ui/g;->a:Z

    if-eqz v0, :cond_2

    .line 1056
    iget-object v0, p0, Lcom/viber/voip/calls/ui/g;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->i(Lcom/viber/voip/calls/ui/PhoneFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->showContextMenu()Z

    goto :goto_0

    .line 1058
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/calls/ui/g;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    iget-object v1, p0, Lcom/viber/voip/calls/ui/g;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->h(Lcom/viber/voip/calls/ui/PhoneFragment;)Lcom/viber/voip/calls/ui/i;

    move-result-object v1

    iget-boolean v2, p0, Lcom/viber/voip/calls/ui/g;->b:Z

    invoke-static {v0, v1, v2}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/calls/ui/i;Z)V

    goto :goto_0

    .line 1060
    :cond_3
    if-ne v2, p2, :cond_4

    .line 1061
    iget-object v0, p0, Lcom/viber/voip/calls/ui/g;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    iget-object v1, p0, Lcom/viber/voip/calls/ui/g;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->h(Lcom/viber/voip/calls/ui/PhoneFragment;)Lcom/viber/voip/calls/ui/i;

    move-result-object v1

    iget-boolean v2, p0, Lcom/viber/voip/calls/ui/g;->b:Z

    invoke-static {v0, v1, v2}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/calls/ui/i;Z)V

    goto :goto_0

    .line 1062
    :cond_4
    const/4 v0, 0x4

    if-eq v0, p2, :cond_5

    const/4 v0, 0x3

    if-eq v0, p2, :cond_5

    const/4 v0, 0x2

    if-eq v0, p2, :cond_5

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 1065
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/calls/ui/g;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    iget-object v1, p0, Lcom/viber/voip/calls/ui/g;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->h(Lcom/viber/voip/calls/ui/PhoneFragment;)Lcom/viber/voip/calls/ui/i;

    move-result-object v1

    iget-boolean v2, p0, Lcom/viber/voip/calls/ui/g;->b:Z

    invoke-static {v0, v1, v2}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/calls/ui/i;Z)V

    goto :goto_0
.end method
