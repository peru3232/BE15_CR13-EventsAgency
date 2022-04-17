<?php

namespace App\Form;

use App\Entity\Event;

use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\FormBuilderInterface;

class AddEventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('event_name', TextType::class, [
                'attr' => ['class' => 'myForm form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('event_date', DateTimeType::class, [
                'attr' => ['class' => 'myForm form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('description', TextType::class, [
                'attr' => ['class' => 'myForm form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('picture', TextType::class, [
                'attr' => ['class' => 'myForm form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('capacity', IntegerType::class, [
                'attr' => ['class' => 'myForm form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('email', TextType::class, [
                'attr' => ['class' => 'myForm form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('phone', TextType::class, [
                'attr' => ['class' => 'myForm form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('address', TextType::class, [
                'attr' => ['class' => 'myForm form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('url', TextType::class, [
                'attr' => ['class' => 'myForm form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('type', ChoiceType::class, [
                'choices' => ['concert' => 'concert', 'opera' => 'opera', 'theatre' => 'theatre'],
                'attr' => ['class' => 'myForm form-control', 'style' => 'margin-bottom:15px']
            ])
//            ->add('eventtype', ChoiceType::class, [
//                'choices' => ['concert' => 'concert', 'opera' => 'opera', 'theatre' => 'theatre'],
//                'attr' => ['class' => 'myForm form-control', 'style' => 'margin-bottom:15px']
//            ])
            ->add('save', SubmitType::class, [
                'label' => 'Create Event',
                'attr' => ['class' => 'btn-primary btn-lg', 'style' => 'margin-bottom:15px',  'background-color: #3c6ac0 !important', 'color: white']
            ]);
    }
    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}
