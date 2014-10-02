.class Lcom/viber/voip/registration/cz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/SelectCountryActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/SelectCountryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/viber/voip/registration/cz;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/viber/voip/registration/cz;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-virtual {v0}, Lcom/viber/voip/registration/SelectCountryActivity;->finish()V

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method
