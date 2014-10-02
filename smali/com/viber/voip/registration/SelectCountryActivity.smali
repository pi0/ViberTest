.class public Lcom/viber/voip/registration/SelectCountryActivity;
.super Lcom/viber/voip/app/ViberListActivity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/registration/CountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/registration/SelectCountryActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/viber/voip/app/ViberListActivity;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/registration/SelectCountryActivity;->c:Ljava/util/List;

    .line 211
    new-instance v0, Lcom/viber/voip/registration/da;

    invoke-direct {v0, p0}, Lcom/viber/voip/registration/da;-><init>(Lcom/viber/voip/registration/SelectCountryActivity;)V

    iput-object v0, p0, Lcom/viber/voip/registration/SelectCountryActivity;->d:Ljava/lang/Runnable;

    .line 315
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/registration/SelectCountryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/viber/voip/registration/SelectCountryActivity;->b:Ljava/lang/String;

    return-object p1
.end method

.method public static a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/registration/CountryCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0xfa

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getCountryCodeManager()Lcom/viber/voip/registration/ar;

    move-result-object v0

    .line 119
    :try_start_0
    invoke-virtual {v0}, Lcom/viber/voip/registration/ar;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const/4 v2, 0x6

    sget-object v3, Lcom/viber/voip/registration/SelectCountryActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/registration/SelectCountryActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/viber/voip/registration/SelectCountryActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/registration/SelectCountryActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/viber/voip/registration/SelectCountryActivity;->c:Ljava/util/List;

    return-object p1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 127
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/SelectCountryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 128
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/registration/SelectCountryActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/registration/SelectCountryActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/viber/voip/registration/SelectCountryActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 131
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/registration/SelectCountryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/viber/voip/registration/SelectCountryActivity;->b()V

    return-void
.end method

.method static synthetic c(Lcom/viber/voip/registration/SelectCountryActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/viber/voip/registration/SelectCountryActivity;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/registration/SelectCountryActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/viber/voip/registration/SelectCountryActivity;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 56
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f03011c

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/SelectCountryActivity;->setContentView(I)V

    .line 60
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->c:Lcom/viber/voip/a/r;

    invoke-virtual {v1}, Lcom/viber/voip/a/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0}, Lcom/viber/voip/util/gl;->a(Landroid/app/Activity;)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/registration/SelectCountryActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/viber/voip/registration/SelectCountryActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/viber/voip/registration/SelectCountryActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020068

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 69
    invoke-virtual {p0}, Lcom/viber/voip/registration/SelectCountryActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/registration/cu;

    invoke-direct {v1, p0}, Lcom/viber/voip/registration/cu;-><init>(Lcom/viber/voip/registration/SelectCountryActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 92
    invoke-virtual {p0}, Lcom/viber/voip/registration/SelectCountryActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/registration/cw;

    invoke-direct {v1, p0}, Lcom/viber/voip/registration/cw;-><init>(Lcom/viber/voip/registration/SelectCountryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/viber/voip/registration/SelectCountryActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 151
    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 153
    const v0, 0x7f07043b

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 154
    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->expandActionView()Z

    .line 156
    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/SearchView;

    .line 157
    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/widget/SearchView;->setIconified(Z)V

    .line 159
    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView;->clearFocus()V

    .line 160
    invoke-virtual {p0}, Lcom/viber/voip/registration/SelectCountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {p0}, Lcom/viber/voip/registration/SelectCountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHintColor(I)V

    .line 162
    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/actionbarsherlock/widget/SearchView;->setPadding(IIII)V

    .line 163
    new-instance v2, Lcom/viber/voip/registration/cx;

    invoke-direct {v2, p0}, Lcom/viber/voip/registration/cx;-><init>(Lcom/viber/voip/registration/SelectCountryActivity;)V

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 182
    new-instance v2, Lcom/viber/voip/registration/cy;

    invoke-direct {v2, p0}, Lcom/viber/voip/registration/cy;-><init>(Lcom/viber/voip/registration/SelectCountryActivity;)V

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/widget/SearchView;->setOnCloseListener(Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;)V

    .line 189
    new-instance v2, Lcom/viber/voip/registration/cz;

    invoke-direct {v2, p0}, Lcom/viber/voip/registration/cz;-><init>(Lcom/viber/voip/registration/SelectCountryActivity;)V

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 203
    const v1, 0x7f070153

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 208
    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberListActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/dd;

    .line 136
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/registration/dd;->a()Lcom/viber/voip/registration/CountryCode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->c:Lcom/viber/voip/a/r;

    invoke-static {v0}, Lcom/viber/voip/registration/dd;->a(Lcom/viber/voip/registration/dd;)Lcom/viber/voip/registration/CountryCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/registration/CountryCode;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/r;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/viber/voip/registration/RegistrationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    const-string/jumbo v2, "extra_selected_code"

    invoke-virtual {v0}, Lcom/viber/voip/registration/dd;->a()Lcom/viber/voip/registration/CountryCode;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 143
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/registration/SelectCountryActivity;->setResult(ILandroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcom/viber/voip/registration/SelectCountryActivity;->finish()V

    .line 146
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 247
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 252
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 249
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/registration/SelectCountryActivity;->finish()V

    .line 250
    const/4 v0, 0x1

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/viber/voip/app/ViberListActivity;->onStart()V

    .line 105
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lcom/viber/voip/app/ViberListActivity;->onStop()V

    .line 112
    return-void
.end method
