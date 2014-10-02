.class public Lcom/viber/voip/ui/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Z

.field private h:Landroid/content/DialogInterface$OnClickListener;

.field private i:Landroid/content/DialogInterface$OnClickListener;

.field private j:Landroid/content/DialogInterface$OnClickListener;

.field private k:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/ui/a/c;->g:Z

    .line 99
    iput-object p1, p0, Lcom/viber/voip/ui/a/c;->a:Landroid/content/Context;

    .line 100
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/ui/a/a;
    .locals 4

    .prologue
    .line 161
    new-instance v0, Lcom/viber/voip/ui/a/a;

    invoke-direct {v0}, Lcom/viber/voip/ui/a/a;-><init>()V

    .line 162
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 163
    const-string/jumbo v2, "title"

    iget-object v3, p0, Lcom/viber/voip/ui/a/c;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 164
    const-string/jumbo v2, "message"

    iget-object v3, p0, Lcom/viber/voip/ui/a/c;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 165
    const-string/jumbo v2, "positive_button"

    iget-object v3, p0, Lcom/viber/voip/ui/a/c;->d:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 166
    const-string/jumbo v2, "negative_button"

    iget-object v3, p0, Lcom/viber/voip/ui/a/c;->e:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 167
    const-string/jumbo v2, "neutral_button"

    iget-object v3, p0, Lcom/viber/voip/ui/a/c;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/a/a;->setArguments(Landroid/os/Bundle;)V

    .line 171
    iget-boolean v1, p0, Lcom/viber/voip/ui/a/c;->g:Z

    iput-boolean v1, v0, Lcom/viber/voip/ui/a/a;->b:Z

    .line 172
    iget-object v1, p0, Lcom/viber/voip/ui/a/c;->k:Landroid/content/DialogInterface$OnCancelListener;

    iput-object v1, v0, Lcom/viber/voip/ui/a/a;->a:Landroid/content/DialogInterface$OnCancelListener;

    .line 173
    iget-object v1, p0, Lcom/viber/voip/ui/a/c;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1}, Lcom/viber/voip/ui/a/a;->a(Lcom/viber/voip/ui/a/a;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    .line 174
    iget-object v1, p0, Lcom/viber/voip/ui/a/c;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1}, Lcom/viber/voip/ui/a/a;->b(Lcom/viber/voip/ui/a/a;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    .line 175
    iget-object v1, p0, Lcom/viber/voip/ui/a/c;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1}, Lcom/viber/voip/ui/a/a;->c(Lcom/viber/voip/ui/a/a;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    .line 176
    return-object v0
.end method

.method public a(I)Lcom/viber/voip/ui/a/c;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/viber/voip/ui/a/c;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/a/c;->a(Ljava/lang/CharSequence;)Lcom/viber/voip/ui/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/viber/voip/ui/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/viber/voip/ui/a/c;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/viber/voip/ui/a/c;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/viber/voip/ui/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/viber/voip/ui/a/c;
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/viber/voip/ui/a/c;->k:Landroid/content/DialogInterface$OnCancelListener;

    .line 152
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/viber/voip/ui/a/c;
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/viber/voip/ui/a/c;->b:Ljava/lang/CharSequence;

    .line 104
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/viber/voip/ui/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/viber/voip/ui/a/c;->d:Ljava/lang/CharSequence;

    .line 122
    iput-object p2, p0, Lcom/viber/voip/ui/a/c;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 123
    return-object p0
.end method

.method public b(I)Lcom/viber/voip/ui/a/c;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/viber/voip/ui/a/c;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/a/c;->b(Ljava/lang/CharSequence;)Lcom/viber/voip/ui/a/c;

    move-result-object v0

    return-object v0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/viber/voip/ui/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/viber/voip/ui/a/c;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/viber/voip/ui/a/c;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/viber/voip/ui/a/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/viber/voip/ui/a/c;
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/viber/voip/ui/a/c;->c:Ljava/lang/CharSequence;

    .line 113
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/viber/voip/ui/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/viber/voip/ui/a/c;->e:Ljava/lang/CharSequence;

    .line 132
    iput-object p2, p0, Lcom/viber/voip/ui/a/c;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 133
    return-object p0
.end method
