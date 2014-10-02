.class public Lcom/viber/voip/phone/b/e;
.super Lcom/viber/voip/phone/b/c;
.source "SourceFile"


# static fields
.field private static p:[[I


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Lcom/viber/voip/phone/b/a/c;

.field private l:Lcom/viber/voip/phone/call/k;

.field private m:[[I

.field private n:[[I

.field private o:[[I

.field private q:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 81
    const/4 v0, 0x5

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/phone/b/e;->p:[[I

    return-void

    :array_0
    .array-data 0x4
        0x4dt 0x3t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x4et 0x3t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x4ft 0x3t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x4ct 0x3t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x4bt 0x3t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x2

    .line 39
    invoke-direct {p0}, Lcom/viber/voip/phone/b/c;-><init>()V

    .line 57
    new-array v0, v4, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/viber/voip/phone/b/e;->m:[[I

    .line 65
    new-array v0, v4, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/viber/voip/phone/b/e;->n:[[I

    .line 73
    new-array v0, v4, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/viber/voip/phone/b/e;->o:[[I

    .line 90
    new-array v0, v4, [I

    fill-array-data v0, :array_f

    iput-object v0, p0, Lcom/viber/voip/phone/b/e;->q:[I

    .line 280
    return-void

    .line 57
    :array_0
    .array-data 0x4
        0x4dt 0x3t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x4et 0x3t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x4ft 0x3t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x4ct 0x3t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x4bt 0x3t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 65
    :array_5
    .array-data 0x4
        0x4dt 0x3t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x4et 0x3t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x4ft 0x3t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x4ct 0x3t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x4bt 0x3t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 73
    :array_a
    .array-data 0x4
        0x4dt 0x3t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x4et 0x3t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x4ft 0x3t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x4ct 0x3t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x4bt 0x3t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 90
    :array_f
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Lcom/viber/voip/phone/b/e;)Lcom/viber/voip/phone/call/k;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->l:Lcom/viber/voip/phone/call/k;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    iget-object v4, p0, Lcom/viber/voip/phone/b/e;->l:Lcom/viber/voip/phone/call/k;

    .line 197
    const/4 v0, 0x0

    check-cast v0, [[I

    .line 206
    if-eqz v4, :cond_9

    .line 207
    invoke-virtual {v4}, Lcom/viber/voip/phone/call/k;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 208
    sget-object v0, Lcom/viber/voip/phone/b/e;->p:[[I

    .line 209
    invoke-virtual {v4}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v1

    const/16 v5, 0xc

    if-eq v1, v5, :cond_0

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v1

    const/16 v5, 0xf

    if-ne v1, v5, :cond_2

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->m:[[I

    :cond_1
    :goto_0
    move v1, v2

    .line 240
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_a

    .line 241
    iget-object v4, p0, Lcom/viber/voip/phone/b/e;->a:Landroid/view/View;

    aget-object v5, v0, v1

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aget-object v5, v0, v1

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/phone/b/e;->q:[I

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v5

    invoke-virtual {v5}, Lcom/viber/voip/phone/call/n;->p()I

    move-result v5

    invoke-static {v1, v5}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_4

    move v1, v3

    .line 213
    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v1

    const/16 v5, 0xb

    if-eq v1, v5, :cond_3

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->m:[[I

    goto :goto_0

    :cond_4
    move v1, v2

    .line 212
    goto :goto_2

    .line 219
    :cond_5
    invoke-virtual {v4}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->p()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->p()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 225
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->o:[[I

    .line 226
    const-string/jumbo v1, "Failed TIMEOUT"

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :cond_7
    invoke-virtual {v4}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 228
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->n:[[I

    .line 229
    const-string/jumbo v1, "Failed FAILED or BUSY"

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    :cond_8
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->m:[[I

    .line 232
    const-string/jumbo v1, "Call ended NORMAL"

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :cond_9
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->m:[[I

    .line 237
    const-string/jumbo v1, "Call ended NORMAL"

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    :cond_a
    invoke-direct {p0}, Lcom/viber/voip/phone/b/e;->b()V

    .line 246
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/high16 v2, 0x1000

    const/4 v1, 0x0

    .line 249
    invoke-static {}, Lcom/viber/voip/phone/PhoneActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    invoke-static {v1}, Lcom/viber/voip/phone/PhoneActivity;->c(Z)V

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.RATE_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-static {}, Lcom/viber/voip/phone/PhoneActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {v1}, Lcom/viber/voip/phone/PhoneActivity;->d(Z)V

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.FACEBOOK_LIKE_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/viber/voip/phone/b/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 184
    :try_start_0
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string/jumbo v1, "mChildFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 185
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 186
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 190
    :catch_1
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/viber/voip/phone/b/c;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/e;->c()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->c()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/e;->l:Lcom/viber/voip/phone/call/k;

    .line 102
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 108
    const v0, 0x7f0300f6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/e;->a:Landroid/view/View;

    .line 110
    iput-object p2, p0, Lcom/viber/voip/phone/b/e;->c:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->a:Landroid/view/View;

    const v1, 0x7f070347

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/b/e;->b:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->a:Landroid/view/View;

    const v1, 0x7f070348

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/b/e;->d:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->a:Landroid/view/View;

    const v1, 0x7f070349

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/b/e;->g:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->a:Landroid/view/View;

    const v1, 0x7f07034a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/phone/b/e;->f:Landroid/widget/ImageButton;

    .line 116
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->a:Landroid/view/View;

    const v1, 0x7f07034b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/b/e;->e:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->a:Landroid/view/View;

    const v1, 0x7f07034c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/phone/b/e;->h:Landroid/widget/Button;

    .line 118
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->a:Landroid/view/View;

    const v1, 0x7f07034d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/phone/b/e;->i:Landroid/widget/Button;

    .line 119
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->a:Landroid/view/View;

    const v1, 0x7f07034f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/phone/b/e;->j:Landroid/widget/Button;

    .line 121
    new-instance v0, Lcom/viber/voip/phone/b/a/c;

    iget-object v1, p0, Lcom/viber/voip/phone/b/e;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/viber/voip/phone/b/e;->l:Lcom/viber/voip/phone/call/k;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/phone/b/a/c;-><init>(Landroid/widget/TextView;Lcom/viber/voip/phone/call/k;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/e;->k:Lcom/viber/voip/phone/b/a/c;

    .line 123
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/viberout/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->i:Landroid/widget/Button;

    new-instance v1, Lcom/viber/voip/phone/b/g;

    invoke-direct {v1, p0, v3}, Lcom/viber/voip/phone/b/g;-><init>(Lcom/viber/voip/phone/b/e;Lcom/viber/voip/phone/b/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->j:Landroid/widget/Button;

    new-instance v1, Lcom/viber/voip/phone/b/h;

    invoke-direct {v1, p0, v3}, Lcom/viber/voip/phone/b/h;-><init>(Lcom/viber/voip/phone/b/e;Lcom/viber/voip/phone/b/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-direct {p0}, Lcom/viber/voip/phone/b/e;->a()V

    .line 133
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->a:Landroid/view/View;

    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->h:Landroid/widget/Button;

    new-instance v1, Lcom/viber/voip/phone/b/i;

    invoke-direct {v1, p0, v3}, Lcom/viber/voip/phone/b/i;-><init>(Lcom/viber/voip/phone/b/e;Lcom/viber/voip/phone/b/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/viber/voip/phone/b/c;->onResume()V

    .line 167
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->l:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/phone/b/e;->a()V

    .line 172
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 138
    invoke-super {p0}, Lcom/viber/voip/phone/b/c;->onStart()V

    .line 139
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/e;->c()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->c()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/viber/voip/phone/b/e;->l:Lcom/viber/voip/phone/call/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/phone/b/e;->l:Lcom/viber/voip/phone/call/k;

    if-eq v1, v0, :cond_1

    .line 141
    :cond_0
    iput-object v0, p0, Lcom/viber/voip/phone/b/e;->l:Lcom/viber/voip/phone/call/k;

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->k:Lcom/viber/voip/phone/b/a/c;

    iget-object v1, p0, Lcom/viber/voip/phone/b/e;->l:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/b/a/c;->a(Lcom/viber/voip/phone/call/k;)V

    .line 145
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->k:Lcom/viber/voip/phone/b/a/c;

    iget-object v1, p0, Lcom/viber/voip/phone/b/e;->l:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/b/e;->l:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/n;->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/phone/b/a/c;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->l:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/b/e;->k:Lcom/viber/voip/phone/b/a/c;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/call/n;->addObserver(Ljava/util/Observer;)V

    .line 148
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->l:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_2

    .line 151
    iget-object v1, p0, Lcom/viber/voip/phone/b/e;->b:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/viber/voip/phone/b/e;->c:Landroid/view/View;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->b()Landroid/net/Uri;

    move-result-object v0

    const v2, 0x7f020253

    invoke-virtual {p0, v1, v0, v2}, Lcom/viber/voip/phone/b/e;->a(Landroid/view/View;Landroid/net/Uri;I)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/phone/b/e;->l:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/viber/voip/phone/b/c;->onStop()V

    .line 177
    iget-object v0, p0, Lcom/viber/voip/phone/b/e;->l:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/b/e;->k:Lcom/viber/voip/phone/b/a/c;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/call/n;->deleteObserver(Ljava/util/Observer;)V

    .line 178
    return-void
.end method
