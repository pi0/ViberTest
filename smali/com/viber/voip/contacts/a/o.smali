.class public Lcom/viber/voip/contacts/a/o;
.super Lcom/viber/voip/contacts/ui/ak;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/a/n;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/viber/voip/contacts/a/n;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/viber/voip/contacts/a/o;->a:Lcom/viber/voip/contacts/a/n;

    .line 302
    invoke-direct {p0, p2}, Lcom/viber/voip/contacts/ui/ak;-><init>(Landroid/view/View;)V

    .line 303
    const v0, 0x7f0701d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/contacts/a/o;->b:Landroid/widget/ImageView;

    .line 304
    const v0, 0x7f0700af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/a/o;->c:Landroid/view/View;

    .line 305
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/a/o;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/viber/voip/contacts/a/o;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/contacts/a/o;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/viber/voip/contacts/a/o;->c:Landroid/view/View;

    return-object v0
.end method
