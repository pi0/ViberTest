.class Lcom/viber/voip/k;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:[Landroid/accounts/Account;

.field private final c:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 598
    const-string/jumbo v0, "^.+@gmail.com$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/k;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>([Landroid/accounts/Account;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 603
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 604
    iput-object p1, p0, Lcom/viber/voip/k;->b:[Landroid/accounts/Account;

    .line 605
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/k;->c:Landroid/view/LayoutInflater;

    .line 606
    return-void
.end method


# virtual methods
.method a()I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 653
    .line 654
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/viber/voip/k;->b:[Landroid/accounts/Account;

    array-length v3, v0

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_2

    .line 655
    iget-object v4, p0, Lcom/viber/voip/k;->b:[Landroid/accounts/Account;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 656
    sget-object v5, Lcom/viber/voip/k;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 657
    if-ne v0, v2, :cond_1

    move v0, v1

    .line 654
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 667
    :cond_2
    return v0
.end method

.method a(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 678
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/viber/voip/k;->b:[Landroid/accounts/Account;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 679
    iget-object v2, p0, Lcom/viber/voip/k;->b:[Landroid/accounts/Account;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 680
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 682
    :goto_1
    return v0

    .line 678
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 682
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(I)Landroid/accounts/Account;
    .locals 1
    .parameter

    .prologue
    .line 615
    iget-object v0, p0, Lcom/viber/voip/k;->b:[Landroid/accounts/Account;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/viber/voip/k;->b:[Landroid/accounts/Account;

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 638
    if-nez p2, :cond_0

    .line 639
    iget-object v0, p0, Lcom/viber/voip/k;->c:Landroid/view/LayoutInflater;

    const v1, 0x1090009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 643
    :goto_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/k;->a(I)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    return-object v0

    .line 641
    :cond_0
    check-cast p2, Landroid/widget/TextView;

    move-object v0, p2

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 596
    invoke-virtual {p0, p1}, Lcom/viber/voip/k;->a(I)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 620
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 626
    if-nez p2, :cond_0

    .line 627
    iget-object v0, p0, Lcom/viber/voip/k;->c:Landroid/view/LayoutInflater;

    const v1, 0x1090008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 631
    :goto_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/k;->a(I)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    return-object v0

    .line 629
    :cond_0
    check-cast p2, Landroid/widget/TextView;

    move-object v0, p2

    goto :goto_0
.end method
