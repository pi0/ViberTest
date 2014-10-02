.class public Lcom/viber/voip/messages/conversation/ui/co;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/viber/voip/messages/conversation/ui/cp;

.field private c:Lcom/actionbarsherlock/view/MenuItem;

.field private d:Lcom/actionbarsherlock/view/MenuItem;

.field private e:Lcom/actionbarsherlock/view/MenuItem;

.field private f:Lcom/actionbarsherlock/view/MenuItem;

.field private g:Lcom/actionbarsherlock/view/MenuItem;

.field private h:Lcom/actionbarsherlock/view/MenuItem;

.field private i:Lcom/actionbarsherlock/view/MenuItem;

.field private j:Lcom/actionbarsherlock/view/MenuItem;

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/conversation/ui/cp;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->k:Z

    .line 37
    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->l:Z

    .line 40
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/co;->a:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/co;->b:Lcom/viber/voip/messages/conversation/ui/cp;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lcom/actionbarsherlock/view/Menu;)V
    .locals 3
    .parameter

    .prologue
    const v1, 0x7f070463

    const/4 v2, 0x0

    .line 64
    const v0, 0x7f070461

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->c:Lcom/actionbarsherlock/view/MenuItem;

    .line 65
    const v0, 0x7f07048e

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->d:Lcom/actionbarsherlock/view/MenuItem;

    .line 66
    const v0, 0x7f070452

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->e:Lcom/actionbarsherlock/view/MenuItem;

    .line 67
    const v0, 0x7f07048c

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->f:Lcom/actionbarsherlock/view/MenuItem;

    .line 68
    const v0, 0x7f07048b

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->g:Lcom/actionbarsherlock/view/MenuItem;

    .line 69
    const v0, 0x7f07048d

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->i:Lcom/actionbarsherlock/view/MenuItem;

    .line 70
    const v0, 0x7f07048f

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->j:Lcom/actionbarsherlock/view/MenuItem;

    .line 71
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->d:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/co;->d:Lcom/actionbarsherlock/view/MenuItem;

    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->l:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0c0321

    :goto_1
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->j:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_2

    .line 82
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->l:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->j:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 89
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->c:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->a:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/util/gl;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->c:Lcom/actionbarsherlock/view/MenuItem;

    const v1, 0x7f0202f5

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 92
    :cond_3
    return-void

    .line 74
    :cond_4
    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->h:Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0

    .line 78
    :cond_5
    const v0, 0x7f0c0371

    goto :goto_1

    .line 85
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->j:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_2
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/viber/voip/messages/conversation/ui/co;->k:Z

    .line 46
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->k:Z

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->g:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->g:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->f:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->f:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->j:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->j:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 57
    :cond_2
    return-void
.end method

.method public a(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->e:Lcom/actionbarsherlock/view/MenuItem;

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->e:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 160
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/co;->e:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz p2, :cond_1

    const v0, 0x7f0c049e

    :goto_1
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(I)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0

    :cond_1
    const v0, 0x7f0c034a

    goto :goto_1
.end method

.method public a(ZZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->h:Lcom/actionbarsherlock/view/MenuItem;

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/co;->h:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 168
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/co;->h:Lcom/actionbarsherlock/view/MenuItem;

    invoke-static {p3}, Lcom/viber/voip/block/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0c0635

    :goto_2
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(I)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0

    .line 167
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 168
    :cond_2
    const v0, 0x7f0c0634

    goto :goto_2
.end method

.method public a(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 103
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 105
    :sswitch_0
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/co;->b:Lcom/viber/voip/messages/conversation/ui/cp;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/co;->b:Lcom/viber/voip/messages/conversation/ui/cp;

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/ui/cp;->d()V

    goto :goto_0

    .line 111
    :sswitch_1
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/co;->b:Lcom/viber/voip/messages/conversation/ui/cp;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/co;->b:Lcom/viber/voip/messages/conversation/ui/cp;

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/ui/cp;->p()V

    goto :goto_0

    .line 117
    :sswitch_2
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/co;->b:Lcom/viber/voip/messages/conversation/ui/cp;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/co;->b:Lcom/viber/voip/messages/conversation/ui/cp;

    invoke-interface {v2, v1}, Lcom/viber/voip/messages/conversation/ui/cp;->d(Z)V

    goto :goto_0

    .line 123
    :sswitch_3
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/co;->b:Lcom/viber/voip/messages/conversation/ui/cp;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/co;->b:Lcom/viber/voip/messages/conversation/ui/cp;

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/conversation/ui/cp;->d(Z)V

    goto :goto_0

    .line 129
    :sswitch_4
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/co;->b:Lcom/viber/voip/messages/conversation/ui/cp;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/co;->b:Lcom/viber/voip/messages/conversation/ui/cp;

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/ui/cp;->x()V

    goto :goto_0

    .line 135
    :sswitch_5
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/co;->b:Lcom/viber/voip/messages/conversation/ui/cp;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/co;->b:Lcom/viber/voip/messages/conversation/ui/cp;

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/ui/cp;->y()V

    goto :goto_0

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070452 -> :sswitch_1
        0x7f070463 -> :sswitch_4
        0x7f07048b -> :sswitch_2
        0x7f07048d -> :sswitch_3
        0x7f07048e -> :sswitch_0
        0x7f07048f -> :sswitch_5
    .end sparse-switch
.end method

.method public b(Lcom/actionbarsherlock/view/Menu;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->k:Z

    if-eqz v0, :cond_0

    .line 100
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/viber/voip/messages/conversation/ui/co;->l:Z

    .line 61
    return-void
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->d:Lcom/actionbarsherlock/view/MenuItem;

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->d:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method public d(Z)V
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->i:Lcom/actionbarsherlock/view/MenuItem;

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/co;->i:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method
