.class Lcom/viber/voip/registration/dd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;

.field private c:Lcom/viber/voip/registration/CountryCode;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/viber/voip/registration/dd;->a:Landroid/view/View;

    .line 323
    const v0, 0x7f0700d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/registration/dd;->b:Landroid/widget/TextView;

    .line 324
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/registration/dd;)Lcom/viber/voip/registration/CountryCode;
    .locals 1
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/viber/voip/registration/dd;->c:Lcom/viber/voip/registration/CountryCode;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/registration/dd;Lcom/viber/voip/registration/CountryCode;)Lcom/viber/voip/registration/CountryCode;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/viber/voip/registration/dd;->c:Lcom/viber/voip/registration/CountryCode;

    return-object p1
.end method

.method static synthetic b(Lcom/viber/voip/registration/dd;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/viber/voip/registration/dd;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/registration/dd;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/viber/voip/registration/dd;->a:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/viber/voip/registration/CountryCode;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/viber/voip/registration/dd;->c:Lcom/viber/voip/registration/CountryCode;

    return-object v0
.end method
