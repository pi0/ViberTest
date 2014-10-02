.class Lcom/viber/voip/registration/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/CountryCode;

.field final synthetic b:I

.field final synthetic c:Lcom/viber/voip/registration/cu;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/cu;Lcom/viber/voip/registration/CountryCode;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/viber/voip/registration/cv;->c:Lcom/viber/voip/registration/cu;

    iput-object p2, p0, Lcom/viber/voip/registration/cv;->a:Lcom/viber/voip/registration/CountryCode;

    iput p3, p0, Lcom/viber/voip/registration/cv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 83
    iget-object v0, p0, Lcom/viber/voip/registration/cv;->c:Lcom/viber/voip/registration/cu;

    iget-object v0, v0, Lcom/viber/voip/registration/cu;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    const v1, 0x7f0703a8

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/SelectCountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/viber/voip/registration/cv;->c:Lcom/viber/voip/registration/cu;

    iget-object v0, v0, Lcom/viber/voip/registration/cu;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-virtual {v0}, Lcom/viber/voip/registration/SelectCountryActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/registration/dc;

    iget-object v2, p0, Lcom/viber/voip/registration/cv;->c:Lcom/viber/voip/registration/cu;

    iget-object v2, v2, Lcom/viber/voip/registration/cu;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    iget-object v3, p0, Lcom/viber/voip/registration/cv;->c:Lcom/viber/voip/registration/cu;

    iget-object v3, v3, Lcom/viber/voip/registration/cu;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-static {v3}, Lcom/viber/voip/registration/SelectCountryActivity;->a(Lcom/viber/voip/registration/SelectCountryActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/registration/cv;->a:Lcom/viber/voip/registration/CountryCode;

    invoke-direct {v1, v2, v3, v4}, Lcom/viber/voip/registration/dc;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/viber/voip/registration/CountryCode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v0, p0, Lcom/viber/voip/registration/cv;->c:Lcom/viber/voip/registration/cu;

    iget-object v0, v0, Lcom/viber/voip/registration/cu;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-virtual {v0}, Lcom/viber/voip/registration/SelectCountryActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/registration/cv;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 87
    return-void
.end method
