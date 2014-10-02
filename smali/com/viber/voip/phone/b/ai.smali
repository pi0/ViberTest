.class public Lcom/viber/voip/phone/b/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/phone/ac;


# instance fields
.field private a:Lcom/viber/voip/phone/PhoneActivity;

.field private b:Landroid/view/View;

.field private c:Lcom/viber/voip/phone/ab;

.field private d:Lcom/viber/voip/phone/ab;

.field private e:Lcom/viber/voip/phone/ab;

.field private f:Lcom/viber/voip/phone/ab;

.field private g:[[I

.field private h:[[I

.field private i:[[I

.field private j:[[I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/viber/voip/phone/b/ai;->g:[[I

    .line 39
    new-array v0, v6, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/viber/voip/phone/b/ai;->h:[[I

    .line 47
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/viber/voip/phone/b/ai;->i:[[I

    .line 53
    new-array v0, v6, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/viber/voip/phone/b/ai;->j:[[I

    .line 65
    iput-object p2, p0, Lcom/viber/voip/phone/b/ai;->a:Lcom/viber/voip/phone/PhoneActivity;

    .line 66
    iput-object p1, p0, Lcom/viber/voip/phone/b/ai;->b:Landroid/view/View;

    .line 67
    return-void

    .line 30
    nop

    :array_0
    .array-data 0x4
        0x82t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x89t 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x8at 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x8ft 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0xadt 0x1t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 39
    :array_5
    .array-data 0x4
        0x89t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x8at 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x8ft 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0xadt 0x1t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 47
    :array_9
    .array-data 0x4
        0x89t 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0xadt 0x1t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 53
    :array_b
    .array-data 0x4
        0x89t 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x8at 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x8ft 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0xadt 0x1t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public a()Lcom/viber/voip/phone/ab;
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/viber/voip/phone/b/ai;->c:Lcom/viber/voip/phone/ab;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/viber/voip/phone/b/af;

    iget-object v1, p0, Lcom/viber/voip/phone/b/ai;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/viber/voip/phone/b/ai;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/phone/b/af;-><init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/ai;->c:Lcom/viber/voip/phone/ab;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/ai;->c:Lcom/viber/voip/phone/ab;

    return-object v0
.end method

.method public b()Lcom/viber/voip/phone/ab;
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/phone/b/ai;->d:Lcom/viber/voip/phone/ab;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/viber/voip/phone/b/k;

    iget-object v1, p0, Lcom/viber/voip/phone/b/ai;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/viber/voip/phone/b/ai;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/phone/b/k;-><init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/ai;->d:Lcom/viber/voip/phone/ab;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/ai;->d:Lcom/viber/voip/phone/ab;

    return-object v0
.end method

.method public c()Lcom/viber/voip/phone/ab;
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/viber/voip/phone/b/ai;->e:Lcom/viber/voip/phone/ab;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/viber/voip/phone/b/ac;

    iget-object v1, p0, Lcom/viber/voip/phone/b/ai;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/viber/voip/phone/b/ai;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/phone/b/ac;-><init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/ai;->e:Lcom/viber/voip/phone/ab;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/ai;->e:Lcom/viber/voip/phone/ab;

    return-object v0
.end method

.method public d()Lcom/viber/voip/phone/ab;
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/viber/voip/phone/b/ai;->f:Lcom/viber/voip/phone/ab;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/viber/voip/phone/b/j;

    iget-object v1, p0, Lcom/viber/voip/phone/b/ai;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/viber/voip/phone/b/ai;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/phone/b/j;-><init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/ai;->f:Lcom/viber/voip/phone/ab;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/ai;->f:Lcom/viber/voip/phone/ab;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 116
    const/high16 v0, 0x7f03

    return v0
.end method
