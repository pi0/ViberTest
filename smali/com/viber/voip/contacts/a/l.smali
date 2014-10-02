.class public Lcom/viber/voip/contacts/a/l;
.super Lcom/viber/voip/contacts/ui/ak;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Landroid/widget/RelativeLayout;

.field public final c:Landroid/view/View;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/view/View;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/CheckBox;

.field public final i:Landroid/view/View;

.field public final j:Landroid/view/View;

.field public k:Lcom/viber/voip/contacts/b/e;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ak;-><init>(Landroid/view/View;)V

    .line 224
    iput p2, p0, Lcom/viber/voip/contacts/a/l;->a:I

    .line 225
    const v0, 0x7f0700af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/viber/voip/contacts/a/l;->b:Landroid/widget/RelativeLayout;

    .line 226
    const v0, 0x7f0700d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/a/l;->c:Landroid/view/View;

    .line 227
    const v0, 0x7f0700d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/a/l;->d:Landroid/widget/TextView;

    .line 228
    const v0, 0x7f07009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/a/l;->e:Landroid/view/View;

    .line 229
    const v0, 0x7f070247

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/a/l;->f:Landroid/widget/TextView;

    .line 230
    const v0, 0x7f0700ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/a/l;->g:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f0700d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/viber/voip/contacts/a/l;->h:Landroid/widget/CheckBox;

    .line 232
    const v0, 0x7f0700b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/a/l;->i:Landroid/view/View;

    .line 233
    const v0, 0x7f070246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/a/l;->j:Landroid/view/View;

    .line 234
    return-void
.end method
